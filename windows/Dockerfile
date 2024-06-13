ARG BASE_IMAGE
FROM $BASE_IMAGE

# Run in cmd
SHELL ["cmd", "/S", "/C"]

# Install chocolatey package manager for windows
RUN @"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" \
                -NoProfile \
                -InputFormat None \
                -ExecutionPolicy Bypass \
                -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; \
                                iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && \
                                SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

# Install or upgrade python and wget
RUN choco upgrade python wget -y

# Remove existing build tools if exist
RUN if exist "C:\\Program Files (x86)\\Microsoft Visual Studio\\Installer\\InstallCleanup.exe" \
 call "C:\\Program Files (x86)\\Microsoft Visual Studio\\Installer\\InstallCleanup.exe" -f

# Install Visual Studio Build Tools
ARG VS_VERSION
RUN wget --no-check-certificate https://aka.ms/vs/%VS_VERSION%/release/vs_buildtools.exe && \
        \
        vs_buildtools.exe \
                --locale en-US \
                --quiet \
                --norestart \
                --wait \
                --nocache \
                --includeRecommended   \
                --add Microsoft.VisualStudio.Workload.VCTools && \
        \
        del vs_buildtools.exe

# Install or upgrade cmake
RUN choco upgrade cmake -y --installargs 'ADD_CMAKE_TO_PATH=System'

# Install conan
RUN python -m pip install conan

# Set VCINSTALLDIR var to help find MSVC compiler
ARG VS_VERSION_YEAR
RUN setx /M VCINSTALLDIR "C:\Program Files (x86)\Microsoft Visual Studio\%VS_VERSION_YEAR%\BuildTools\VC"
