.class public final Lcom/spotify/mobile/android/spotlets/common/persistence/json/JsonBundleHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/common/persistence/json/JsonBundleHelper;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v1, Landroid/os/Bundle;

    const-class v2, Lcom/spotify/mobile/android/spotlets/common/persistence/json/a;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->addMixInAnnotations(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method public static a(Ljava/io/File;)Landroid/os/Bundle;
    .registers 3

    sget-object v0, Lcom/spotify/mobile/android/spotlets/common/persistence/json/JsonBundleHelper;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v1, Landroid/os/Bundle;

    invoke-virtual {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public static a(Ljava/io/File;Landroid/os/Bundle;)V
    .registers 3

    sget-object v0, Lcom/spotify/mobile/android/spotlets/common/persistence/json/JsonBundleHelper;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Ljava/io/File;Ljava/lang/Object;)V

    return-void
.end method
