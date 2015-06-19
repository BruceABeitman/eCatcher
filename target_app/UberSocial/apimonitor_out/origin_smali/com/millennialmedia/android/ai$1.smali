.class Lcom/millennialmedia/android/ai$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/ai;->c(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/ai;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/ai;)V
    .registers 2

    iput-object p1, p0, Lcom/millennialmedia/android/ai$1;->a:Lcom/millennialmedia/android/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 4

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/ai$1;->a:Lcom/millennialmedia/android/ai;

    invoke-static {v1}, Lcom/millennialmedia/android/ai;->a(Lcom/millennialmedia/android/ai;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method
