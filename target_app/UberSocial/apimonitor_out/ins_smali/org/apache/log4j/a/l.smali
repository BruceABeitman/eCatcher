.class  Lorg/apache/log4j/a/l;
.super Ljavax/swing/AbstractAction;
.source "SourceFile"
.field static a:Ljava/lang/Class;
.field private static final b:Lorg/apache/log4j/aa;
.field private final c:Ljavax/swing/JFrame;
.field private final d:Ljavax/swing/JFileChooser;
.field private final e:Lorg/xml/sax/XMLReader;
.field private final f:Lorg/apache/log4j/a/t;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lorg/apache/log4j/a/l;->a:Ljava/lang/Class;
if-nez v0, :cond_13
const-string v0, "org.apache.log4j.a.l"
invoke-static {v0}, Lorg/apache/log4j/a/l;->a(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/log4j/a/l;->a:Ljava/lang/Class;
:goto_c
invoke-static {v0}, Lorg/apache/log4j/aa;->b(Ljava/lang/Class;)Lorg/apache/log4j/aa;
move-result-object v0
sput-object v0, Lorg/apache/log4j/a/l;->b:Lorg/apache/log4j/aa;
return-void
:cond_13
sget-object v0, Lorg/apache/log4j/a/l;->a:Ljava/lang/Class;
goto :goto_c
.end method
.method constructor <init>(Ljavax/swing/JFrame;Lorg/apache/log4j/a/q;)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0}, Ljavax/swing/AbstractAction;-><init>()V
new-instance v0, Ljavax/swing/JFileChooser;
invoke-direct {v0}, Ljavax/swing/JFileChooser;-><init>()V
iput-object v0, p0, Lorg/apache/log4j/a/l;->d:Ljavax/swing/JFileChooser;
iget-object v0, p0, Lorg/apache/log4j/a/l;->d:Ljavax/swing/JFileChooser;
invoke-virtual {v0, v1}, Ljavax/swing/JFileChooser;->setMultiSelectionEnabled(Z)V
iget-object v0, p0, Lorg/apache/log4j/a/l;->d:Ljavax/swing/JFileChooser;
invoke-virtual {v0, v1}, Ljavax/swing/JFileChooser;->setFileSelectionMode(I)V
iput-object p1, p0, Lorg/apache/log4j/a/l;->c:Ljavax/swing/JFrame;
new-instance v0, Lorg/apache/log4j/a/t;
invoke-direct {v0, p2}, Lorg/apache/log4j/a/t;-><init>(Lorg/apache/log4j/a/q;)V
iput-object v0, p0, Lorg/apache/log4j/a/l;->f:Lorg/apache/log4j/a/t;
invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;
move-result-object v0
invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;
move-result-object v0
invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/a/l;->e:Lorg/xml/sax/XMLReader;
iget-object v0, p0, Lorg/apache/log4j/a/l;->e:Lorg/xml/sax/XMLReader;
iget-object v1, p0, Lorg/apache/log4j/a/l;->f:Lorg/apache/log4j/a/t;
invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V
return-void
.end method
.method static a(Ljava/lang/String;)Ljava/lang/Class;
.registers 3
:try_start_0
invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
:try_end_3
.catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v0
return-object v0
:catch_5
move-exception v0
new-instance v1, Ljava/lang/NoClassDefFoundError;
invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
move-result-object v0
throw v0
.end method
.method private b(Ljava/lang/String;)I
.registers 6
iget-object v1, p0, Lorg/apache/log4j/a/l;->e:Lorg/xml/sax/XMLReader;
monitor-enter v1
:try_start_3
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "<?xml version=\"1.0\" standalone=\"yes\"?>\n"
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v2, "<!DOCTYPE log4j:eventSet "
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v2, "[<!ENTITY data SYSTEM \"file:///"
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v2, "\">]>\n"
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v2, "<log4j:eventSet xmlns:log4j=\"Claira\">\n"
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v2, "&data;\n"
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v2, "</log4j:eventSet>\n"
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
new-instance v2, Lorg/xml/sax/InputSource;
new-instance v3, Ljava/io/StringReader;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v3, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V
iget-object v0, p0, Lorg/apache/log4j/a/l;->e:Lorg/xml/sax/XMLReader;
invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
iget-object v0, p0, Lorg/apache/log4j/a/l;->f:Lorg/apache/log4j/a/t;
invoke-virtual {v0}, Lorg/apache/log4j/a/t;->a()I
move-result v0
monitor-exit v1
return v0
:catchall_49
move-exception v0
monitor-exit v1
:try_end_4b
.catchall {:try_start_3 .. :try_end_4b} :catchall_49
throw v0
.end method
.method public a(Ljava/awt/event/ActionEvent;)V
.registers 6
sget-object v0, Lorg/apache/log4j/a/l;->b:Lorg/apache/log4j/aa;
const-string v1, "load file called"
invoke-virtual {v0, v1}, Lorg/apache/log4j/aa;->d(Ljava/lang/Object;)V
iget-object v0, p0, Lorg/apache/log4j/a/l;->d:Ljavax/swing/JFileChooser;
iget-object v1, p0, Lorg/apache/log4j/a/l;->c:Ljavax/swing/JFrame;
invoke-virtual {v0, v1}, Ljavax/swing/JFileChooser;->showOpenDialog(Ljava/awt/Component;)I
move-result v0
if-nez v0, :cond_63
sget-object v0, Lorg/apache/log4j/a/l;->b:Lorg/apache/log4j/aa;
const-string v1, "Need to load a file"
invoke-virtual {v0, v1}, Lorg/apache/log4j/aa;->d(Ljava/lang/Object;)V
iget-object v0, p0, Lorg/apache/log4j/a/l;->d:Ljavax/swing/JFileChooser;
invoke-virtual {v0}, Ljavax/swing/JFileChooser;->getSelectedFile()Ljava/io/File;
move-result-object v0
sget-object v1, Lorg/apache/log4j/a/l;->b:Lorg/apache/log4j/aa;
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "loading the contents of "
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lorg/apache/log4j/aa;->d(Ljava/lang/Object;)V
:try_start_3a
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lorg/apache/log4j/a/l;->b(Ljava/lang/String;)I
move-result v0
iget-object v1, p0, Lorg/apache/log4j/a/l;->c:Ljavax/swing/JFrame;
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "Loaded "
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
move-result-object v0
const-string v2, " events."
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
const-string v2, "CHAINSAW"
const/4 v3, 0x1
invoke-static {v1, v0, v2, v3}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V
:goto_63
:try_end_63
.catch Ljava/lang/Exception; {:try_start_3a .. :try_end_63} :catch_64
:cond_63
return-void
:catch_64
move-exception v0
sget-object v1, Lorg/apache/log4j/a/l;->b:Lorg/apache/log4j/aa;
const-string v2, "caught an exception loading the file"
invoke-virtual {v1, v2, v0}, Lorg/apache/log4j/aa;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V
iget-object v1, p0, Lorg/apache/log4j/a/l;->c:Ljavax/swing/JFrame;
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "Error parsing file - "
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
const-string v2, "CHAINSAW"
const/4 v3, 0x0
invoke-static {v1, v0, v2, v3}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V
goto :goto_63
.end method