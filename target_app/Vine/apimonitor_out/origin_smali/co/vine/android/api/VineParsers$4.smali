.class final Lco/vine/android/api/VineParsers$4;
.super Lco/vine/android/api/VineParsers$RecordParser;
.source "VineParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/api/VineParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lco/vine/android/api/VineParsers$RecordParser",
        "<",
        "Lco/vine/android/api/VinePost;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lco/vine/android/api/VineParsers$RecordParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/fasterxml/jackson/core/JsonParser;Landroid/os/Bundle;)Lco/vine/android/api/VinePost;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #calls: Lco/vine/android/api/VineParsers;->parsePost(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VinePost;
    invoke-static {p1}, Lco/vine/android/api/VineParsers;->access$300(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VinePost;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parse(Lcom/fasterxml/jackson/core/JsonParser;Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lco/vine/android/api/VineParsers$4;->parse(Lcom/fasterxml/jackson/core/JsonParser;Landroid/os/Bundle;)Lco/vine/android/api/VinePost;

    move-result-object v0

    return-object v0
.end method