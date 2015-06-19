.class Lcom/millennialmedia/android/ch$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/ch;->a(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/ch;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/ch;)V
    .registers 2

    iput-object p1, p0, Lcom/millennialmedia/android/ch$2;->a:Lcom/millennialmedia/android/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/ch$2;->a:Lcom/millennialmedia/android/ch;

    invoke-virtual {v0}, Lcom/millennialmedia/android/ch;->b()V

    return-void
.end method
