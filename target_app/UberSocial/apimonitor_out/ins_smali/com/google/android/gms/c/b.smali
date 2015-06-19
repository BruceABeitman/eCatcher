.class public abstract Lcom/google/android/gms/c/b;
.super Ljava/lang/Object;
.field private a:Lcom/google/android/gms/c/a;
.field private b:Landroid/os/Bundle;
.field private c:Ljava/util/LinkedList;
.field private final d:Lcom/google/android/gms/c/h;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/android/gms/c/b$1;
invoke-direct {v0, p0}, Lcom/google/android/gms/c/b$1;-><init>(Lcom/google/android/gms/c/b;)V
iput-object v0, p0, Lcom/google/android/gms/c/b;->d:Lcom/google/android/gms/c/h;
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/c/b;Landroid/os/Bundle;)Landroid/os/Bundle;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/c/b;->b:Landroid/os/Bundle;
return-object p1
.end method
.method static synthetic a(Lcom/google/android/gms/c/b;Lcom/google/android/gms/c/a;)Lcom/google/android/gms/c/a;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/c/b;->a:Lcom/google/android/gms/c/a;
return-object p1
.end method
.method static synthetic a(Lcom/google/android/gms/c/b;)Ljava/util/LinkedList;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/c/b;->c:Ljava/util/LinkedList;
return-object v0
.end method
.method private a(I)V
.registers 3
:goto_0
iget-object v0, p0, Lcom/google/android/gms/c/b;->c:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
move-result v0
if-nez v0, :cond_1c
iget-object v0, p0, Lcom/google/android/gms/c/b;->c:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/c/c;
invoke-interface {v0}, Lcom/google/android/gms/c/c;->a()I
move-result v0
if-lt v0, p1, :cond_1c
iget-object v0, p0, Lcom/google/android/gms/c/b;->c:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;
goto :goto_0
:cond_1c
return-void
.end method
.method private a(Landroid/os/Bundle;Lcom/google/android/gms/c/c;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/c/b;->a:Lcom/google/android/gms/c/a;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/google/android/gms/c/b;->a:Lcom/google/android/gms/c/a;
invoke-interface {p2, v0}, Lcom/google/android/gms/c/c;->a(Lcom/google/android/gms/c/a;)V
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/google/android/gms/c/b;->c:Ljava/util/LinkedList;
if-nez v0, :cond_15
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/c/b;->c:Ljava/util/LinkedList;
:cond_15
iget-object v0, p0, Lcom/google/android/gms/c/b;->c:Ljava/util/LinkedList;
invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
if-eqz p1, :cond_28
iget-object v0, p0, Lcom/google/android/gms/c/b;->b:Landroid/os/Bundle;
if-nez v0, :cond_2e
invoke-virtual {p1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
iput-object v0, p0, Lcom/google/android/gms/c/b;->b:Landroid/os/Bundle;
:cond_28
:goto_28
iget-object v0, p0, Lcom/google/android/gms/c/b;->d:Lcom/google/android/gms/c/h;
invoke-virtual {p0, v0}, Lcom/google/android/gms/c/b;->a(Lcom/google/android/gms/c/h;)V
goto :goto_9
:cond_2e
iget-object v0, p0, Lcom/google/android/gms/c/b;->b:Landroid/os/Bundle;
invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
goto :goto_28
.end method
.method static synthetic b(Lcom/google/android/gms/c/b;)Lcom/google/android/gms/c/a;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/c/b;->a:Lcom/google/android/gms/c/a;
return-object v0
.end method
.method public static b(Landroid/widget/FrameLayout;)V
.registers 9
const/4 v7, -0x2
invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/common/i;->a(Landroid/content/Context;)I
move-result v1
const/4 v2, -0x1
invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/i;->b(Landroid/content/Context;II)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1}, Lcom/google/android/gms/common/i;->a(Landroid/content/Context;I)Ljava/lang/String;
move-result-object v3
new-instance v4, Landroid/widget/LinearLayout;
invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;
move-result-object v5
invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
const/4 v5, 0x1
invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V
new-instance v5, Landroid/widget/FrameLayout$LayoutParams;
invoke-direct {v5, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
new-instance v5, Landroid/widget/TextView;
invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;
move-result-object v6
invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
new-instance v6, Landroid/widget/FrameLayout$LayoutParams;
invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
if-eqz v3, :cond_5e
new-instance v2, Landroid/widget/Button;
invoke-direct {v2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V
new-instance v5, Landroid/widget/FrameLayout$LayoutParams;
invoke-direct {v5, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
invoke-virtual {v2, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
new-instance v3, Lcom/google/android/gms/c/b$5;
invoke-direct {v3, v0, v1}, Lcom/google/android/gms/c/b$5;-><init>(Landroid/content/Context;I)V
invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_5e
return-void
.end method
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 10
new-instance v2, Landroid/widget/FrameLayout;
invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;
move-result-object v0
invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
new-instance v0, Lcom/google/android/gms/c/b$4;
move-object v1, p0
move-object v3, p1
move-object v4, p2
move-object v5, p3
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/c/b$4;-><init>(Lcom/google/android/gms/c/b;Landroid/widget/FrameLayout;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
invoke-direct {p0, p3, v0}, Lcom/google/android/gms/c/b;->a(Landroid/os/Bundle;Lcom/google/android/gms/c/c;)V
iget-object v0, p0, Lcom/google/android/gms/c/b;->a:Lcom/google/android/gms/c/a;
if-nez v0, :cond_1c
invoke-virtual {p0, v2}, Lcom/google/android/gms/c/b;->a(Landroid/widget/FrameLayout;)V
:cond_1c
return-object v2
.end method
.method public a()Lcom/google/android/gms/c/a;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/c/b;->a:Lcom/google/android/gms/c/a;
return-object v0
.end method
.method public a(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
.registers 5
new-instance v0, Lcom/google/android/gms/c/b$2;
invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/c/b$2;-><init>(Lcom/google/android/gms/c/b;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
invoke-direct {p0, p3, v0}, Lcom/google/android/gms/c/b;->a(Landroid/os/Bundle;Lcom/google/android/gms/c/c;)V
return-void
.end method
.method public a(Landroid/os/Bundle;)V
.registers 3
new-instance v0, Lcom/google/android/gms/c/b$3;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/c/b$3;-><init>(Lcom/google/android/gms/c/b;Landroid/os/Bundle;)V
invoke-direct {p0, p1, v0}, Lcom/google/android/gms/c/b;->a(Landroid/os/Bundle;Lcom/google/android/gms/c/c;)V
return-void
.end method
.method protected a(Landroid/widget/FrameLayout;)V
.registers 2
invoke-static {p1}, Lcom/google/android/gms/c/b;->b(Landroid/widget/FrameLayout;)V
return-void
.end method
.method protected abstract a(Lcom/google/android/gms/c/h;)V
.end method
.method public b()V
.registers 3
const/4 v0, 0x0
new-instance v1, Lcom/google/android/gms/c/b$6;
invoke-direct {v1, p0}, Lcom/google/android/gms/c/b$6;-><init>(Lcom/google/android/gms/c/b;)V
invoke-direct {p0, v0, v1}, Lcom/google/android/gms/c/b;->a(Landroid/os/Bundle;Lcom/google/android/gms/c/c;)V
return-void
.end method
.method public b(Landroid/os/Bundle;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/c/b;->a:Lcom/google/android/gms/c/a;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/google/android/gms/c/b;->a:Lcom/google/android/gms/c/a;
invoke-interface {v0, p1}, Lcom/google/android/gms/c/a;->b(Landroid/os/Bundle;)V
:cond_9
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/google/android/gms/c/b;->b:Landroid/os/Bundle;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/google/android/gms/c/b;->b:Landroid/os/Bundle;
invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
goto :goto_9
.end method
.method public c()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/c/b;->a:Lcom/google/android/gms/c/a;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/google/android/gms/c/b;->a:Lcom/google/android/gms/c/a;
invoke-interface {v0}, Lcom/google/android/gms/c/a;->c()V
:goto_9
return-void
:cond_a
const/4 v0, 0x5
invoke-direct {p0, v0}, Lcom/google/android/gms/c/b;->a(I)V
goto :goto_9
.end method
.method public d()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/c/b;->a:Lcom/google/android/gms/c/a;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/google/android/gms/c/b;->a:Lcom/google/android/gms/c/a;
invoke-interface {v0}, Lcom/google/android/gms/c/a;->e()V
:goto_9
return-void
:cond_a
const/4 v0, 0x2
invoke-direct {p0, v0}, Lcom/google/android/gms/c/b;->a(I)V
goto :goto_9
.end method
.method public e()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/c/b;->a:Lcom/google/android/gms/c/a;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/google/android/gms/c/b;->a:Lcom/google/android/gms/c/a;
invoke-interface {v0}, Lcom/google/android/gms/c/a;->f()V
:goto_9
return-void
:cond_a
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/google/android/gms/c/b;->a(I)V
goto :goto_9
.end method
.method public f()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/c/b;->a:Lcom/google/android/gms/c/a;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/google/android/gms/c/b;->a:Lcom/google/android/gms/c/a;
invoke-interface {v0}, Lcom/google/android/gms/c/a;->g()V
:cond_9
return-void
.end method