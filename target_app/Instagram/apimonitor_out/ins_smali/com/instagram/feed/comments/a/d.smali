.class final Lcom/instagram/feed/comments/a/d;
.super Ljava/lang/Object;
.source "CommentRowViewBinder.java"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic a:Landroid/content/Context;
.field final synthetic b:Lcom/instagram/feed/comments/a/h;
.field final synthetic c:Lcom/instagram/feed/d/b;
.field final synthetic d:Lcom/instagram/feed/comments/a/a;
.field private final e:Landroid/view/GestureDetector;
.method constructor <init>(Lcom/instagram/feed/comments/a/a;Landroid/content/Context;Lcom/instagram/feed/comments/a/h;Lcom/instagram/feed/d/b;)V
.registers 8
iput-object p1, p0, Lcom/instagram/feed/comments/a/d;->d:Lcom/instagram/feed/comments/a/a;
iput-object p2, p0, Lcom/instagram/feed/comments/a/d;->a:Landroid/content/Context;
iput-object p3, p0, Lcom/instagram/feed/comments/a/d;->b:Lcom/instagram/feed/comments/a/h;
iput-object p4, p0, Lcom/instagram/feed/comments/a/d;->c:Lcom/instagram/feed/d/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/view/GestureDetector;
iget-object v1, p0, Lcom/instagram/feed/comments/a/d;->a:Landroid/content/Context;
new-instance v2, Lcom/instagram/feed/comments/a/e;
invoke-direct {v2, p0}, Lcom/instagram/feed/comments/a/e;-><init>(Lcom/instagram/feed/comments/a/d;)V
invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
iput-object v0, p0, Lcom/instagram/feed/comments/a/d;->e:Landroid/view/GestureDetector;
return-void
.end method
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 4
iget-object v0, p0, Lcom/instagram/feed/comments/a/d;->e:Landroid/view/GestureDetector;
invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
return v0
.end method