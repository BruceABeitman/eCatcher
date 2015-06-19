.class public final Lcom/instagram/android/feed/e/h;
.super Ljava/lang/Object;
.source "LikeUtil.java"
.method private static a()Lcom/instagram/api/j/a;
.registers 1
new-instance v0, Lcom/instagram/android/feed/e/i;
invoke-direct {v0}, Lcom/instagram/android/feed/e/i;-><init>()V
return-object v0
.end method
.method private static a(Landroid/content/Context;)V
.registers 6
const/4 v4, 0x0
invoke-static {}, Lcom/instagram/k/a/b;->a()Lcom/instagram/k/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/k/a/b;->b()I
move-result v1
const/4 v2, 0x3
if-ge v1, v2, :cond_26
invoke-virtual {v0}, Lcom/instagram/k/a/b;->c()Z
move-result v2
if-nez v2, :cond_26
sget v2, Lcom/facebook/az;->double_tap_to_like_hint:I
const/4 v3, 0x1
invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v2
const/16 v3, 0x11
invoke-virtual {v2, v3, v4, v4}, Landroid/widget/Toast;->setGravity(III)V
invoke-virtual {v2}, Landroid/widget/Toast;->show()V
add-int/lit8 v1, v1, 0x1
invoke-virtual {v0, v1}, Lcom/instagram/k/a/b;->a(I)V
:cond_26
return-void
.end method
.method public static a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/l;II)V
.registers 6
sget v0, Lcom/instagram/android/h/g;->a:I
if-ne p4, v0, :cond_b
sget v0, Lcom/instagram/feed/d/o;->a:I
if-ne p3, v0, :cond_b
invoke-static {p0}, Lcom/instagram/android/feed/e/h;->a(Landroid/content/Context;)V
:cond_b
invoke-virtual {p2}, Lcom/instagram/feed/d/l;->p()I
move-result v0
if-eq v0, p3, :cond_1c
invoke-static {p2, p3}, Lcom/instagram/feed/d/r;->a(Lcom/instagram/feed/d/l;I)V
new-instance v0, Lcom/instagram/f/a/a/q;
invoke-direct {v0, p0, p1, p2, p3}, Lcom/instagram/f/a/a/q;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/l;I)V
invoke-virtual {v0}, Lcom/instagram/f/a/a/q;->h()V
:cond_1c
return-void
.end method
.method public static a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/l;IIILcom/instagram/android/fragment/aa;Lcom/instagram/feed/g/a;)V
.registers 16
sget v0, Lcom/instagram/android/h/g;->a:I
if-ne p5, v0, :cond_b
sget v0, Lcom/instagram/feed/d/o;->a:I
if-ne p4, v0, :cond_b
invoke-static {p0}, Lcom/instagram/android/feed/e/h;->a(Landroid/content/Context;)V
:cond_b
sget v0, Lcom/instagram/android/h/g;->b:I
if-ne p5, v0, :cond_16
invoke-static {}, Lcom/instagram/k/a/b;->a()Lcom/instagram/k/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/k/a/b;->d()V
:cond_16
invoke-virtual {p2}, Lcom/instagram/feed/d/l;->p()I
move-result v0
if-eq v0, p4, :cond_37
invoke-static {p2, p4}, Lcom/instagram/feed/d/r;->a(Lcom/instagram/feed/d/l;I)V
new-instance v0, Lcom/instagram/android/c/a/e;
invoke-interface {p6}, Lcom/instagram/android/fragment/aa;->aa()Ljava/util/Map;
move-result-object v6
invoke-static {}, Lcom/instagram/android/feed/e/h;->a()Lcom/instagram/api/j/a;
move-result-object v7
move-object v1, p0
move-object v2, p1
move-object v3, p2
move v4, p4
move v5, p5
invoke-direct/range {v0 .. v7}, Lcom/instagram/android/c/a/e;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/l;IILjava/util/Map;Lcom/instagram/api/j/a;)V
invoke-virtual {v0}, Lcom/instagram/android/c/a/e;->h()V
invoke-static {p2, p3, p4, p7}, Lcom/instagram/android/feed/e/h;->a(Lcom/instagram/feed/d/l;IILcom/instagram/feed/g/a;)V
:cond_37
return-void
.end method
.method private static a(Lcom/instagram/feed/d/l;IILcom/instagram/feed/g/a;)V
.registers 5
sget v0, Lcom/instagram/feed/d/o;->a:I
if-ne p2, v0, :cond_a
const-string v0, "like"
:goto_6
invoke-static {v0, p0, p1, p3}, Lcom/instagram/feed/c/e;->a(Ljava/lang/String;Lcom/instagram/feed/d/l;ILcom/instagram/feed/g/a;)V
return-void
:cond_a
const-string v0, "unlike"
goto :goto_6
.end method