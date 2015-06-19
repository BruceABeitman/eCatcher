.class Lcom/googlecode/javacpp/Parser$1;
.super Ljava/io/Writer;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/javacpp/Parser;->parse(Ljava/io/File;[Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/javacpp/Parser;


# direct methods
.method constructor <init>(Lcom/googlecode/javacpp/Parser;)V
    .registers 2

    iput-object p1, p0, Lcom/googlecode/javacpp/Parser$1;->this$0:Lcom/googlecode/javacpp/Parser;

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public write([CII)V
    .registers 4

    return-void
.end method
