.class Lcom/millennialmedia/android/cq$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/cq;->loadUrl(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/millennialmedia/android/cq;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/cq;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/millennialmedia/android/cq$6;->b:Lcom/millennialmedia/android/cq;

    iput-object p2, p0, Lcom/millennialmedia/android/cq$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/cq$6;->b:Lcom/millennialmedia/android/cq;

    iget-object v1, p0, Lcom/millennialmedia/android/cq$6;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/cq;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
