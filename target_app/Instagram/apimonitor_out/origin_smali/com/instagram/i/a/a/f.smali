.class final Lcom/instagram/i/a/a/f;
.super Ljava/lang/Object;
.source "NewsfeedStoryRowBinderMultiMedia.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/i/a/a/a;

.field final synthetic b:Lcom/instagram/i/d/c;


# direct methods
.method constructor <init>(Lcom/instagram/i/a/a/a;Lcom/instagram/i/d/c;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/i/a/a/f;->a:Lcom/instagram/i/a/a/a;

    iput-object p2, p0, Lcom/instagram/i/a/a/f;->b:Lcom/instagram/i/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/i/a/a/f;->a:Lcom/instagram/i/a/a/a;

    iget-object v1, p0, Lcom/instagram/i/a/a/f;->b:Lcom/instagram/i/d/c;

    invoke-virtual {v1}, Lcom/instagram/i/d/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/i/a/a/a;->a(Ljava/lang/String;)V

    return-void
.end method
