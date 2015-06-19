.class public Lcom/fasterxml/jackson/core/JsonFactory;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field protected static final DEFAULT_FACTORY_FEATURE_FLAGS:I = 0x0
.field protected static final DEFAULT_GENERATOR_FEATURE_FLAGS:I = 0x0
.field protected static final DEFAULT_PARSER_FEATURE_FLAGS:I = 0x0
.field private static final DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/SerializableString; = null
.field protected static final _recyclerRef:Ljava/lang/ThreadLocal; = null
.field private static final serialVersionUID:J = 0x791a681719524b4aL
.field protected _characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;
.field protected _factoryFeatures:I
.field protected _generatorFeatures:I
.field protected _inputDecorator:Lcom/fasterxml/jackson/core/io/InputDecorator;
.field protected _objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;
.field protected _outputDecorator:Lcom/fasterxml/jackson/core/io/OutputDecorator;
.field protected _parserFeatures:I
.field protected final transient _rootByteSymbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
.field protected final transient _rootCharSymbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;
.field protected _rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->collectDefaults()I
move-result v0
sput v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_FACTORY_FEATURE_FLAGS:I
invoke-static {}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->collectDefaults()I
move-result v0
sput v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_PARSER_FEATURE_FLAGS:I
invoke-static {}, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->collectDefaults()I
move-result v0
sput v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_GENERATOR_FEATURE_FLAGS:I
sget-object v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/io/SerializedString;
sput-object v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/SerializableString;
new-instance v0, Ljava/lang/ThreadLocal;
invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/core/JsonFactory;->_recyclerRef:Ljava/lang/ThreadLocal;
return-void
.end method
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>(Lcom/fasterxml/jackson/core/ObjectCodec;)V
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/core/ObjectCodec;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->createRoot()Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootCharSymbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;
invoke-static {}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->createRoot()Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootByteSymbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
sget v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_FACTORY_FEATURE_FLAGS:I
iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_factoryFeatures:I
sget v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_PARSER_FEATURE_FLAGS:I
iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_parserFeatures:I
sget v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_GENERATOR_FEATURE_FLAGS:I
iput v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_generatorFeatures:I
sget-object v0, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/SerializableString;
iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;
iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;
return-void
.end method
.method protected _createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/core/io/IOContext;
.registers 5
new-instance v0, Lcom/fasterxml/jackson/core/io/IOContext;
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonFactory;->_getBufferRecycler()Lcom/fasterxml/jackson/core/util/BufferRecycler;
move-result-object v1
invoke-direct {v0, v1, p1, p2}, Lcom/fasterxml/jackson/core/io/IOContext;-><init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;Ljava/lang/Object;Z)V
return-object v0
.end method
.method protected _createGenerator(Ljava/io/Writer;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonGenerator;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/JsonFactory;->_createJsonGenerator(Ljava/io/Writer;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonGenerator;
move-result-object v0
return-object v0
.end method
.method protected _createJsonGenerator(Ljava/io/Writer;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonGenerator;
.registers 6
new-instance v0, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;
iget v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_generatorFeatures:I
iget-object v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;
invoke-direct {v0, p2, v1, v2, p1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;ILcom/fasterxml/jackson/core/ObjectCodec;Ljava/io/Writer;)V
iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;
if-eqz v1, :cond_12
iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->setCharacterEscapes(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)Lcom/fasterxml/jackson/core/JsonGenerator;
:cond_12
iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;
sget-object v2, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/SerializableString;
if-eq v1, v2, :cond_1b
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/json/WriterBasedJsonGenerator;->setRootValueSeparator(Lcom/fasterxml/jackson/core/SerializableString;)Lcom/fasterxml/jackson/core/JsonGenerator;
:cond_1b
return-object v0
.end method
.method protected _createJsonParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonParser;
.registers 10
new-instance v0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;
invoke-direct {v0, p2, p1}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;)V
iget v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_parserFeatures:I
iget-object v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;
iget-object v3, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootByteSymbols:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
iget-object v4, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootCharSymbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;
sget-object v5, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->CANONICALIZE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;
invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/JsonFactory;->isEnabled(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Z
move-result v5
sget-object v6, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->INTERN_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;
invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/core/JsonFactory;->isEnabled(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Z
move-result v6
invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->constructParser(ILcom/fasterxml/jackson/core/ObjectCodec;Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;ZZ)Lcom/fasterxml/jackson/core/JsonParser;
move-result-object v0
return-object v0
.end method
.method protected _createJsonParser(Ljava/io/Reader;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonParser;
.registers 9
new-instance v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;
iget v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_parserFeatures:I
iget-object v4, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;
iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootCharSymbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;
sget-object v3, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->CANONICALIZE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;
invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/JsonFactory;->isEnabled(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Z
move-result v3
sget-object v5, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->INTERN_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;
invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/core/JsonFactory;->isEnabled(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Z
move-result v5
invoke-virtual {v1, v3, v5}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->makeChild(ZZ)Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;
move-result-object v5
move-object v1, p2
move-object v3, p1
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;ILjava/io/Reader;Lcom/fasterxml/jackson/core/ObjectCodec;Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;)V
return-object v0
.end method
.method protected _createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonParser;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/JsonFactory;->_createJsonParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonParser;
move-result-object v0
return-object v0
.end method
.method protected _createParser(Ljava/io/Reader;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonParser;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/JsonFactory;->_createJsonParser(Ljava/io/Reader;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonParser;
move-result-object v0
return-object v0
.end method
.method protected _createUTF8JsonGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonGenerator;
.registers 6
new-instance v0, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;
iget v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_generatorFeatures:I
iget-object v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;
invoke-direct {v0, p2, v1, v2, p1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;ILcom/fasterxml/jackson/core/ObjectCodec;Ljava/io/OutputStream;)V
iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;
if-eqz v1, :cond_12
iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->setCharacterEscapes(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)Lcom/fasterxml/jackson/core/JsonGenerator;
:cond_12
iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;
sget-object v2, Lcom/fasterxml/jackson/core/JsonFactory;->DEFAULT_ROOT_VALUE_SEPARATOR:Lcom/fasterxml/jackson/core/SerializableString;
if-eq v1, v2, :cond_1b
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/json/UTF8JsonGenerator;->setRootValueSeparator(Lcom/fasterxml/jackson/core/SerializableString;)Lcom/fasterxml/jackson/core/JsonGenerator;
:cond_1b
return-object v0
.end method
.method protected _createWriter(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;Lcom/fasterxml/jackson/core/io/IOContext;)Ljava/io/Writer;
.registers 6
sget-object v0, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;
if-ne p2, v0, :cond_a
new-instance v0, Lcom/fasterxml/jackson/core/io/UTF8Writer;
invoke-direct {v0, p3, p1}, Lcom/fasterxml/jackson/core/io/UTF8Writer;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/OutputStream;)V
:goto_9
return-object v0
:cond_a
new-instance v0, Ljava/io/OutputStreamWriter;
invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonEncoding;->getJavaName()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
goto :goto_9
.end method
.method public _getBufferRecycler()Lcom/fasterxml/jackson/core/util/BufferRecycler;
.registers 4
sget-object v0, Lcom/fasterxml/jackson/core/JsonFactory;->_recyclerRef:Ljava/lang/ThreadLocal;
invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/ref/SoftReference;
if-nez v0, :cond_1d
const/4 v0, 0x0
:goto_b
if-nez v0, :cond_1c
new-instance v0, Lcom/fasterxml/jackson/core/util/BufferRecycler;
invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/BufferRecycler;-><init>()V
sget-object v1, Lcom/fasterxml/jackson/core/JsonFactory;->_recyclerRef:Ljava/lang/ThreadLocal;
new-instance v2, Ljava/lang/ref/SoftReference;
invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V
invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
:cond_1c
return-object v0
:cond_1d
invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/core/util/BufferRecycler;
goto :goto_b
.end method
.method public createJsonGenerator(Ljava/io/File;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/JsonGenerator;
.registers 6
new-instance v0, Ljava/io/FileOutputStream;
invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
const/4 v1, 0x1
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/core/io/IOContext;
move-result-object v1
invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/core/io/IOContext;->setEncoding(Lcom/fasterxml/jackson/core/JsonEncoding;)V
sget-object v2, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;
if-ne p2, v2, :cond_20
iget-object v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_outputDecorator:Lcom/fasterxml/jackson/core/io/OutputDecorator;
if-eqz v2, :cond_1b
iget-object v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_outputDecorator:Lcom/fasterxml/jackson/core/io/OutputDecorator;
invoke-virtual {v2, v1, v0}, Lcom/fasterxml/jackson/core/io/OutputDecorator;->decorate(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/OutputStream;)Ljava/io/OutputStream;
move-result-object v0
:cond_1b
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createUTF8JsonGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonGenerator;
move-result-object v0
:goto_1f
return-object v0
:cond_20
invoke-virtual {p0, v0, p2, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createWriter(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;Lcom/fasterxml/jackson/core/io/IOContext;)Ljava/io/Writer;
move-result-object v0
iget-object v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_outputDecorator:Lcom/fasterxml/jackson/core/io/OutputDecorator;
if-eqz v2, :cond_2e
iget-object v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_outputDecorator:Lcom/fasterxml/jackson/core/io/OutputDecorator;
invoke-virtual {v2, v1, v0}, Lcom/fasterxml/jackson/core/io/OutputDecorator;->decorate(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/Writer;)Ljava/io/Writer;
move-result-object v0
:cond_2e
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createGenerator(Ljava/io/Writer;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonGenerator;
move-result-object v0
goto :goto_1f
.end method
.method public createJsonGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/JsonGenerator;
.registers 6
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/core/io/IOContext;
move-result-object v1
invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/core/io/IOContext;->setEncoding(Lcom/fasterxml/jackson/core/JsonEncoding;)V
sget-object v0, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;
if-ne p2, v0, :cond_1b
iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_outputDecorator:Lcom/fasterxml/jackson/core/io/OutputDecorator;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_outputDecorator:Lcom/fasterxml/jackson/core/io/OutputDecorator;
invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/io/OutputDecorator;->decorate(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/OutputStream;)Ljava/io/OutputStream;
move-result-object p1
:cond_16
invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createUTF8JsonGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonGenerator;
move-result-object v0
:goto_1a
return-object v0
:cond_1b
invoke-virtual {p0, p1, p2, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createWriter(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;Lcom/fasterxml/jackson/core/io/IOContext;)Ljava/io/Writer;
move-result-object v0
iget-object v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_outputDecorator:Lcom/fasterxml/jackson/core/io/OutputDecorator;
if-eqz v2, :cond_29
iget-object v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_outputDecorator:Lcom/fasterxml/jackson/core/io/OutputDecorator;
invoke-virtual {v2, v1, v0}, Lcom/fasterxml/jackson/core/io/OutputDecorator;->decorate(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/Writer;)Ljava/io/Writer;
move-result-object v0
:cond_29
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createGenerator(Ljava/io/Writer;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonGenerator;
move-result-object v0
goto :goto_1a
.end method
.method public createJsonGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/core/JsonGenerator;
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/core/io/IOContext;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_outputDecorator:Lcom/fasterxml/jackson/core/io/OutputDecorator;
if-eqz v1, :cond_f
iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_outputDecorator:Lcom/fasterxml/jackson/core/io/OutputDecorator;
invoke-virtual {v1, v0, p1}, Lcom/fasterxml/jackson/core/io/OutputDecorator;->decorate(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/Writer;)Ljava/io/Writer;
move-result-object p1
:cond_f
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_createGenerator(Ljava/io/Writer;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonGenerator;
move-result-object v0
return-object v0
.end method
.method public createJsonParser(Ljava/io/File;)Lcom/fasterxml/jackson/core/JsonParser;
.registers 5
const/4 v0, 0x1
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/core/io/IOContext;
move-result-object v1
new-instance v0, Ljava/io/FileInputStream;
invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
iget-object v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_inputDecorator:Lcom/fasterxml/jackson/core/io/InputDecorator;
if-eqz v2, :cond_14
iget-object v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_inputDecorator:Lcom/fasterxml/jackson/core/io/InputDecorator;
invoke-virtual {v2, v1, v0}, Lcom/fasterxml/jackson/core/io/InputDecorator;->decorate(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;)Ljava/io/InputStream;
move-result-object v0
:cond_14
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createParser(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonParser;
move-result-object v0
return-object v0
.end method
.method public createJsonParser(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser;
.registers 5
new-instance v0, Ljava/io/StringReader;
invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
const/4 v1, 0x1
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createContext(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/core/io/IOContext;
move-result-object v1
iget-object v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_inputDecorator:Lcom/fasterxml/jackson/core/io/InputDecorator;
if-eqz v2, :cond_14
iget-object v2, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_inputDecorator:Lcom/fasterxml/jackson/core/io/InputDecorator;
invoke-virtual {v2, v1, v0}, Lcom/fasterxml/jackson/core/io/InputDecorator;->decorate(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/Reader;)Ljava/io/Reader;
move-result-object v0
:cond_14
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->_createParser(Ljava/io/Reader;Lcom/fasterxml/jackson/core/io/IOContext;)Lcom/fasterxml/jackson/core/JsonParser;
move-result-object v0
return-object v0
.end method
.method public getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;
return-object v0
.end method
.method public getFormatName()Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
const-class v1, Lcom/fasterxml/jackson/core/JsonFactory;
if-ne v0, v1, :cond_b
const-string v0, "JSON"
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public final isEnabled(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Z
.registers 4
iget v0, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_factoryFeatures:I
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->getMask()I
move-result v1
and-int/2addr v0, v1
if-eqz v0, :cond_b
const/4 v0, 0x1
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method protected readResolve()Ljava/lang/Object;
.registers 3
new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory;
iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>(Lcom/fasterxml/jackson/core/ObjectCodec;)V
return-object v0
.end method
.method public setCodec(Lcom/fasterxml/jackson/core/ObjectCodec;)Lcom/fasterxml/jackson/core/JsonFactory;
.registers 2
iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonFactory;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;
return-object p0
.end method