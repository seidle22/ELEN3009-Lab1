##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Guessing_Game
ConfigurationName      :=Debug
WorkspacePath          :=/Users/eliseidle/Documents/Software_Developement_2/elen3009-lab1/guessing-game.cpp
ProjectPath            :=/Users/eliseidle/Documents/Software_Developement_2/elen3009-lab1/guessing-game.cpp/Guessing_Game
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Eli Seidle
Date                   :=20/07/2019
CodeLitePath           :="/Users/eliseidle/Library/Application Support/CodeLite"
LinkerName             :=/usr/bin/g++
SharedObjectLinkerName :=/usr/bin/g++ -dynamiclib -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="Guessing_Game.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS := -std=c++17 -Wall -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/private/var/folders/w0/_1y8vsw56k957rgwt_vg7wcw0000gn/T/AppTranslocation/DEEA6724-0BBA-4D66-B907-88C8D8563167/d/codelite.app/Contents/SharedSupport/
Objects0=$(IntermediateDirectory)/guessing-game.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@test -d ./Debug || $(MakeDirCommand) ./Debug


$(IntermediateDirectory)/.d:
	@test -d ./Debug || $(MakeDirCommand) ./Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/guessing-game.cpp$(ObjectSuffix): guessing-game.cpp $(IntermediateDirectory)/guessing-game.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/Users/eliseidle/Documents/Software_Developement_2/elen3009-lab1/guessing-game.cpp/Guessing_Game/guessing-game.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/guessing-game.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/guessing-game.cpp$(DependSuffix): guessing-game.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/guessing-game.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/guessing-game.cpp$(DependSuffix) -MM guessing-game.cpp

$(IntermediateDirectory)/guessing-game.cpp$(PreprocessSuffix): guessing-game.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/guessing-game.cpp$(PreprocessSuffix) guessing-game.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


