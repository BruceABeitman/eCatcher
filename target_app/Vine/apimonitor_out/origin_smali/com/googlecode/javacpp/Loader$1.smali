.class final Lcom/googlecode/javacpp/Loader$1;
.super Ljava/lang/SecurityManager;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/javacpp/Loader;->getCallerClass(I)Ljava/lang/Class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/SecurityManager;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassContext()[Ljava/lang/Class;
    .registers 2

    invoke-super {p0}, Ljava/lang/SecurityManager;->getClassContext()[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
