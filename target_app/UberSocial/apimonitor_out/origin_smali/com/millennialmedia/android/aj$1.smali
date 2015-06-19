.class Lcom/millennialmedia/android/aj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/aj;->a(J)V
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/aj;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/aj;)V
    .registers 2

    iput-object p1, p0, Lcom/millennialmedia/android/aj$1;->a:Lcom/millennialmedia/android/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/aj$1;->a:Lcom/millennialmedia/android/aj;

    invoke-virtual {v0}, Lcom/millennialmedia/android/aj;->u()V

    return-void
.end method
