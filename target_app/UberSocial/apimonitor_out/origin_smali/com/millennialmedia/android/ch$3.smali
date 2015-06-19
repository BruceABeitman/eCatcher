.class Lcom/millennialmedia/android/ch$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/ch;->a(Lcom/millennialmedia/android/bc;)Z
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/bc;

.field final synthetic b:Lcom/millennialmedia/android/ch;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/ch;Lcom/millennialmedia/android/bc;)V
    .registers 3

    iput-object p1, p0, Lcom/millennialmedia/android/ch$3;->b:Lcom/millennialmedia/android/ch;

    iput-object p2, p0, Lcom/millennialmedia/android/ch$3;->a:Lcom/millennialmedia/android/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/ch$3;->b:Lcom/millennialmedia/android/ch;

    iget-object v0, v0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/millennialmedia/android/ch$3;->b:Lcom/millennialmedia/android/ch;

    iget-object v0, v0, Lcom/millennialmedia/android/ch;->B:Lcom/millennialmedia/android/ba;

    iget-object v1, p0, Lcom/millennialmedia/android/ch$3;->a:Lcom/millennialmedia/android/bc;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/ba;->c(Lcom/millennialmedia/android/bc;)Z

    :cond_f
    return-void
.end method
