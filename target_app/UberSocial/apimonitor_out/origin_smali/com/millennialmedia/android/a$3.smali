.class final Lcom/millennialmedia/android/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/a;->b(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/millennialmedia/android/a$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-string v0, "AdCache"

    const-string v1, "AdCache"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/millennialmedia/android/a$3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/millennialmedia/android/a;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/millennialmedia/android/a$3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/millennialmedia/android/a;->d(Landroid/content/Context;)V

    return-void
.end method
