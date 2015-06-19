.class Lcom/millennialmedia/android/cy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/cy;
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/cy;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/cy;)V
    .registers 2

    iput-object p1, p0, Lcom/millennialmedia/android/cy$1;->a:Lcom/millennialmedia/android/cy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/cy$1;->a:Lcom/millennialmedia/android/cy;

    invoke-virtual {v0}, Lcom/millennialmedia/android/cy;->g()Z

    return-void
.end method
