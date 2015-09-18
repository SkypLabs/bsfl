Name:		bsfl
Summary:	Bash Shell Function Library

Release:	1%{?rev}%{?dist}
Version:	0.1.0
BuildArch:	noarch

License:	New BSD
Group:		Development/Libraries
URL:		https://github.com/SkypLabs/bsfl

Source0:	%{name}-%{version}.tar.gz

requires:	bash

%description
The Bash Shell Function Library (BSFL) is a small Bash script that acts as a library for bash scripts. It provides a couple of functions that makes the lives of most people using shell scripts a bit easier.

%prep
%autosetup -n %{name}-%{version}

%install
mkdir -p $RPM_BUILD_ROOT/opt/bsfl
cp %{_builddir}/%{name}-%{version}/lib/* $RPM_BUILD_ROOT/opt/bsfl

%clean
rm -rf %{buildroot}

%files
%defattr(-,root,root,-)
/opt/bsfl/bsfl.sh

%changelog
* Thu Nov 13 2014 - skyper@skyplabs.net
- bsfl initial package definition.
