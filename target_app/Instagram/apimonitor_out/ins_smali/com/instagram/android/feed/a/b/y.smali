.class final Lcom/instagram/android/feed/a/b/y;
.super Ljava/lang/Object;
.source "MediaViewBinder.java"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic a:Lcom/instagram/android/feed/a/b/ac;
.field final synthetic b:I
.field final synthetic c:Lcom/instagram/feed/d/l;
.field final synthetic d:Lcom/instagram/android/feed/a/b/x;
.method constructor <init>(Lcom/instagram/android/feed/a/b/x;Lcom/instagram/android/feed/a/b/ac;ILcom/instagram/feed/d/l;)V
.registers 5
iput-object p1, p0, Lcom/instagram/android/feed/a/b/y;->d:Lcom/instagram/android/feed/a/b/x;
iput-object p2, p0, Lcom/instagram/android/feed/a/b/y;->a:Lcom/instagram/android/feed/a/b/ac;
iput p3, p0, Lcom/instagram/android/feed/a/b/y;->b:I
iput-object p4, p0, Lcom/instagram/android/feed/a/b/y;->c:Lcom/instagram/feed/d/l;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 7
iget-object v0, p0, Lcom/instagram/android/feed/a/b/y;->d:Lcom/instagram/android/feed/a/b/x;
invoke-static {v0}, Lcom/instagram/android/feed/a/b/x;->a(Lcom/instagram/android/feed/a/b/x;)Lcom/instagram/android/feed/a/b/ad;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/feed/a/b/y;->a:Lcom/instagram/android/feed/a/b/ac;
iget v2, p0, Lcom/instagram/android/feed/a/b/y;->b:I
iget-object v3, p0, Lcom/instagram/android/feed/a/b/y;->c:Lcom/instagram/feed/d/l;
invoke-virtual {v0, v1, v2, v3, p2}, Lcom/instagram/android/feed/a/b/ad;->a(Lcom/instagram/android/feed/a/b/ac;ILcom/instagram/feed/d/l;Landroid/view/MotionEvent;)Z
move-result v0
return v0
.end method