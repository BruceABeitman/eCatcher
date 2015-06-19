.class final Lco/vine/android/api/VineParsers$2;
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
        "Lco/vine/android/api/VineUser;",
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
.method public parse(Lcom/fasterxml/jackson/core/JsonParser;Landroid/os/Bundle;)Lco/vine/android/api/VineUser;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #calls: Lco/vine/android/api/VineParsers;->parseUser(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineUser;
    invoke-static {p1}, Lco/vine/android/api/VineParsers;->access$100(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineUser;

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

    invoke-virtual {p0, p1, p2}, Lco/vine/android/api/VineParsers$2;->parse(Lcom/fasterxml/jackson/core/JsonParser;Landroid/os/Bundle;)Lco/vine/android/api/VineUser;

    move-result-object v0

    return-object v0
.end method
