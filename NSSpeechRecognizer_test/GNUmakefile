#
# GNUmakefile - Generated by ProjectCenter
#
ifeq ($(GNUSTEP_MAKEFILES),)
 GNUSTEP_MAKEFILES := $(shell gnustep-config --variable=GNUSTEP_MAKEFILES 2>/dev/null)
  ifeq ($(GNUSTEP_MAKEFILES),)
    $(warning )
    $(warning Unable to obtain GNUSTEP_MAKEFILES setting from gnustep-config!)
    $(warning Perhaps gnustep-make is not properly installed,)
    $(warning so gnustep-config is not in your PATH.)
    $(warning )
    $(warning Your PATH is currently $(PATH))
    $(warning )
  endif
endif
ifeq ($(GNUSTEP_MAKEFILES),)
 $(error You need to set GNUSTEP_MAKEFILES before compiling!)
endif

include $(GNUSTEP_MAKEFILES)/common.make

#
# Application
#
VERSION = 0.1
PACKAGE_NAME = NSSpeechRecognizer_test
APP_NAME = NSSpeechRecognizer_test
NSSpeechRecognizer_test_APPLICATION_ICON =
NSSpeechRecognizer_test_MAIN_MODEL_FILE = MainMenu.xib


#
# Resource files
#
NSSpeechRecognizer_test_RESOURCE_FILES = \
Base.lproj/MainMenu.xib \


#
# Header files
#
NSSpeechRecognizer_test_HEADER_FILES = \
AppDelegate.h

#
# Objective-C Class files
#
NSSpeechRecognizer_test_OBJC_FILES = \
AppDelegate.m

#
# Other sources
#
NSSpeechRecognizer_test_OBJC_FILES += \
main.m 

#
# Makefiles
#
-include GNUmakefile.preamble
include $(GNUSTEP_MAKEFILES)/aggregate.make
include $(GNUSTEP_MAKEFILES)/application.make
-include GNUmakefile.postamble
