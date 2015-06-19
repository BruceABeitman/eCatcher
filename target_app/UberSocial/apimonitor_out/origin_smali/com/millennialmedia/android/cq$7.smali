.class Lcom/millennialmedia/android/cq$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/cq;->onSizeChanged(IIII)V
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/cq;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/cq;)V
    .registers 2

    iput-object p1, p0, Lcom/millennialmedia/android/cq$7;->a:Lcom/millennialmedia/android/cq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/cq$7;->a:Lcom/millennialmedia/android/cq;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/millennialmedia/android/cq;->h:Z

    return-void
.end method
