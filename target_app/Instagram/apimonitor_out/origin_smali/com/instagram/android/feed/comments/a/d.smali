.class final Lcom/instagram/android/feed/comments/a/d;
.super Ljava/lang/Object;
.source "CommentThreadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/feed/d/b;

.field final synthetic b:Lcom/instagram/android/feed/comments/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/comments/a/a;Lcom/instagram/feed/d/b;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/feed/comments/a/d;->b:Lcom/instagram/android/feed/comments/a/a;

    iput-object p2, p0, Lcom/instagram/android/feed/comments/a/d;->a:Lcom/instagram/feed/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/d;->a:Lcom/instagram/feed/d/b;

    invoke-static {v0}, Lcom/instagram/feed/comments/b/a;->a(Lcom/instagram/feed/d/b;)V

    return-void
.end method
