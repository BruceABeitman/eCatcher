.class public final Lcom/mato/sdk/utils/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String; = "127.0.0.1"

.field private static b:I = 0x1fbb

.field private static c:Ljava/lang/String; = "maabiz1.chinanetcenter.com"

.field private static d:I = 0x9bdc

.field private static e:I = 0x1a0a

.field private static f:Ljava/lang/String; = null

.field private static g:Ljava/lang/String; = "2.8.0"

.field private static h:Ljava/lang/String; = "2989d4f8dcda393d1c1ca3c021f0cb10"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/MatoSdk.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
