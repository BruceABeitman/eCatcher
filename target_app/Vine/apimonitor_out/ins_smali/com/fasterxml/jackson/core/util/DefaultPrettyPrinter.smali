.class public Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;
.super Ljava/lang/Object;
.source "DefaultPrettyPrinter.java"
.implements Lcom/fasterxml/jackson/core/PrettyPrinter;
.implements Lcom/fasterxml/jackson/core/util/Instantiatable;
.implements Ljava/io/Serializable;
.field public static final DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/io/SerializedString; = null
.field private static final serialVersionUID:J = -0x4c80a4585cebda9dL
.field protected _arrayIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;
.field protected transient _nesting:I
.field protected _objectIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;
.field protected final _rootSeparator:Lcom/fasterxml/jackson/core/SerializableString;
.field protected _spacesInObjectEntries:Z
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lcom/fasterxml/jackson/core/io/SerializedString;
const-string v1, " "
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/io/SerializedString;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/io/SerializedString;
return-void
.end method
.method public constructor <init>()V
.registers 2
sget-object v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/io/SerializedString;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;-><init>(Lcom/fasterxml/jackson/core/SerializableString;)V
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/core/SerializableString;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$FixedSpaceIndenter;->instance:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$FixedSpaceIndenter;
iput-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_arrayIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;
sget-object v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Lf2SpacesIndenter;->instance:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Lf2SpacesIndenter;
iput-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_spacesInObjectEntries:Z
const/4 v0, 0x0
iput v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I
iput-object p1, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_rootSeparator:Lcom/fasterxml/jackson/core/SerializableString;
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;)V
.registers 3
iget-object v0, p1, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_rootSeparator:Lcom/fasterxml/jackson/core/SerializableString;
invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;-><init>(Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;Lcom/fasterxml/jackson/core/SerializableString;)V
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;Lcom/fasterxml/jackson/core/SerializableString;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$FixedSpaceIndenter;->instance:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$FixedSpaceIndenter;
iput-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_arrayIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;
sget-object v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Lf2SpacesIndenter;->instance:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Lf2SpacesIndenter;
iput-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_spacesInObjectEntries:Z
const/4 v0, 0x0
iput v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I
iget-object v0, p1, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_arrayIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;
iput-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_arrayIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;
iget-object v0, p1, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;
iput-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;
iget-boolean v0, p1, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_spacesInObjectEntries:Z
iput-boolean v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_spacesInObjectEntries:Z
iget v0, p1, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I
iput v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I
iput-object p2, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_rootSeparator:Lcom/fasterxml/jackson/core/SerializableString;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
if-nez p1, :cond_7
const/4 v0, 0x0
:goto_3
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;-><init>(Lcom/fasterxml/jackson/core/SerializableString;)V
return-void
:cond_7
new-instance v0, Lcom/fasterxml/jackson/core/io/SerializedString;
invoke-direct {v0, p1}, Lcom/fasterxml/jackson/core/io/SerializedString;-><init>(Ljava/lang/String;)V
goto :goto_3
.end method
.method protected _withSpaces(Z)Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;
.registers 3
iget-boolean v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_spacesInObjectEntries:Z
if-ne v0, p1, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;
invoke-direct {v0, p0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;-><init>(Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;)V
iput-boolean p1, v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_spacesInObjectEntries:Z
move-object p0, v0
goto :goto_4
.end method
.method public beforeArrayValues(Lcom/fasterxml/jackson/core/JsonGenerator;)V
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_arrayIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;
iget v1, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I
invoke-interface {v0, p1, v1}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;->writeIndentation(Lcom/fasterxml/jackson/core/JsonGenerator;I)V
return-void
.end method
.method public beforeObjectEntries(Lcom/fasterxml/jackson/core/JsonGenerator;)V
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;
iget v1, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I
invoke-interface {v0, p1, v1}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;->writeIndentation(Lcom/fasterxml/jackson/core/JsonGenerator;I)V
return-void
.end method
.method public createInstance()Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;
.registers 2
new-instance v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;
invoke-direct {v0, p0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;-><init>(Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;)V
return-object v0
.end method
.method public bridge synthetic createInstance()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->createInstance()Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;
move-result-object v0
return-object v0
.end method
.method public indentArraysWith(Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;)V
.registers 2
if-nez p1, :cond_4
sget-object p1, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$NopIndenter;->instance:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$NopIndenter;
:cond_4
iput-object p1, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_arrayIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;
return-void
.end method
.method public indentObjectsWith(Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;)V
.registers 2
if-nez p1, :cond_4
sget-object p1, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$NopIndenter;->instance:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$NopIndenter;
:cond_4
iput-object p1, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;
return-void
.end method
.method public spacesInObjectEntries(Z)V
.registers 2
iput-boolean p1, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_spacesInObjectEntries:Z
return-void
.end method
.method public withArrayIndenter(Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;)Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;
.registers 3
if-nez p1, :cond_4
sget-object p1, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$NopIndenter;->instance:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$NopIndenter;
:cond_4
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_arrayIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;
if-ne v0, p1, :cond_9
:goto_8
return-object p0
:cond_9
new-instance v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;
invoke-direct {v0, p0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;-><init>(Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;)V
iput-object p1, v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_arrayIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;
move-object p0, v0
goto :goto_8
.end method
.method public withObjectIndenter(Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;)Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;
.registers 3
if-nez p1, :cond_4
sget-object p1, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$NopIndenter;->instance:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$NopIndenter;
:cond_4
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;
if-ne v0, p1, :cond_9
:goto_8
return-object p0
:cond_9
new-instance v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;
invoke-direct {v0, p0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;-><init>(Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;)V
iput-object p1, v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;
move-object p0, v0
goto :goto_8
.end method
.method public withRootSeparator(Lcom/fasterxml/jackson/core/SerializableString;)Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_rootSeparator:Lcom/fasterxml/jackson/core/SerializableString;
if-eq v0, p1, :cond_e
if-eqz p1, :cond_f
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_rootSeparator:Lcom/fasterxml/jackson/core/SerializableString;
invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_f
:cond_e
:goto_e
return-object p0
:cond_f
new-instance v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;
invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;-><init>(Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;Lcom/fasterxml/jackson/core/SerializableString;)V
move-object p0, v0
goto :goto_e
.end method
.method public withSpacesInObjectEntries()Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;
.registers 2
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_withSpaces(Z)Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;
move-result-object v0
return-object v0
.end method
.method public withoutSpacesInObjectEntries()Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_withSpaces(Z)Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;
move-result-object v0
return-object v0
.end method
.method public writeArrayValueSeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V
.registers 4
const/16 v0, 0x2c
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_arrayIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;
iget v1, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I
invoke-interface {v0, p1, v1}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;->writeIndentation(Lcom/fasterxml/jackson/core/JsonGenerator;I)V
return-void
.end method
.method public writeEndArray(Lcom/fasterxml/jackson/core/JsonGenerator;I)V
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_arrayIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;
invoke-interface {v0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;->isInline()Z
move-result v0
if-nez v0, :cond_e
iget v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I
:cond_e
if-lez p2, :cond_1d
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_arrayIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;
iget v1, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I
invoke-interface {v0, p1, v1}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;->writeIndentation(Lcom/fasterxml/jackson/core/JsonGenerator;I)V
:goto_17
const/16 v0, 0x5d
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V
return-void
:cond_1d
const/16 v0, 0x20
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V
goto :goto_17
.end method
.method public writeEndObject(Lcom/fasterxml/jackson/core/JsonGenerator;I)V
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;
invoke-interface {v0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;->isInline()Z
move-result v0
if-nez v0, :cond_e
iget v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I
:cond_e
if-lez p2, :cond_1d
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;
iget v1, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I
invoke-interface {v0, p1, v1}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;->writeIndentation(Lcom/fasterxml/jackson/core/JsonGenerator;I)V
:goto_17
const/16 v0, 0x7d
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V
return-void
:cond_1d
const/16 v0, 0x20
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V
goto :goto_17
.end method
.method public writeObjectEntrySeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V
.registers 4
const/16 v0, 0x2c
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;
iget v1, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I
invoke-interface {v0, p1, v1}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;->writeIndentation(Lcom/fasterxml/jackson/core/JsonGenerator;I)V
return-void
.end method
.method public writeObjectFieldValueSeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V
.registers 3
iget-boolean v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_spacesInObjectEntries:Z
if-eqz v0, :cond_a
const-string v0, " : "
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(Ljava/lang/String;)V
:goto_9
return-void
:cond_a
const/16 v0, 0x3a
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V
goto :goto_9
.end method
.method public writeRootValueSeparator(Lcom/fasterxml/jackson/core/JsonGenerator;)V
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_rootSeparator:Lcom/fasterxml/jackson/core/SerializableString;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_rootSeparator:Lcom/fasterxml/jackson/core/SerializableString;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(Lcom/fasterxml/jackson/core/SerializableString;)V
:cond_9
return-void
.end method
.method public writeStartArray(Lcom/fasterxml/jackson/core/JsonGenerator;)V
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_arrayIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;
invoke-interface {v0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;->isInline()Z
move-result v0
if-nez v0, :cond_e
iget v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I
:cond_e
const/16 v0, 0x5b
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V
return-void
.end method
.method public writeStartObject(Lcom/fasterxml/jackson/core/JsonGenerator;)V
.registers 3
const/16 v0, 0x7b
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(C)V
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_objectIndenter:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;
invoke-interface {v0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;->isInline()Z
move-result v0
if-nez v0, :cond_13
iget v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->_nesting:I
:cond_13
return-void
.end method