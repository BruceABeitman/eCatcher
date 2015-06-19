.class Lorg/apache/james/mime4j/message/Header$1;
.super Lorg/apache/james/mime4j/AbstractContentHandler;
.source "Header.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/james/mime4j/message/Header;-><init>(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/james/mime4j/message/Header;

.field final synthetic val$parser:Lorg/apache/james/mime4j/MimeStreamParser;


# direct methods
.method constructor <init>(Lorg/apache/james/mime4j/message/Header;Lorg/apache/james/mime4j/MimeStreamParser;)V
    .registers 3

    iput-object p1, p0, Lorg/apache/james/mime4j/message/Header$1;->this$0:Lorg/apache/james/mime4j/message/Header;

    iput-object p2, p0, Lorg/apache/james/mime4j/message/Header$1;->val$parser:Lorg/apache/james/mime4j/MimeStreamParser;

    invoke-direct {p0}, Lorg/apache/james/mime4j/AbstractContentHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public endHeader()V
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/message/Header$1;->val$parser:Lorg/apache/james/mime4j/MimeStreamParser;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/MimeStreamParser;->stop()V

    return-void
.end method

.method public field(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/james/mime4j/message/Header$1;->this$0:Lorg/apache/james/mime4j/message/Header;

    invoke-static {p1}, Lorg/apache/james/mime4j/field/Field;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->addField(Lorg/apache/james/mime4j/field/Field;)V

    return-void
.end method
