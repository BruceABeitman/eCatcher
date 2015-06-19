.class final Lcom/instagram/android/directshare/d/d;
.super Ljava/lang/Object;
.source "DirectSharePermalinkFragment.java"
.implements Lcom/instagram/common/h/d;
.field final synthetic a:Lcom/instagram/android/directshare/d/c;
.method constructor <init>(Lcom/instagram/android/directshare/d/c;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/directshare/d/d;->a:Lcom/instagram/android/directshare/d/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private a()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/directshare/d/d;->a:Lcom/instagram/android/directshare/d/c;
invoke-static {v0}, Lcom/instagram/android/directshare/d/c;->b(Lcom/instagram/android/directshare/d/c;)V
return-void
.end method
.method private a(Lcom/instagram/feed/d/q;)Z
.registers 4
iget-object v0, p0, Lcom/instagram/android/directshare/d/d;->a:Lcom/instagram/android/directshare/d/c;
invoke-static {v0}, Lcom/instagram/android/directshare/d/c;->a(Lcom/instagram/android/directshare/d/c;)Lcom/instagram/feed/d/l;
move-result-object v0
if-eqz v0, :cond_1c
iget-object v0, p1, Lcom/instagram/feed/d/q;->a:Ljava/lang/String;
iget-object v1, p0, Lcom/instagram/android/directshare/d/d;->a:Lcom/instagram/android/directshare/d/c;
invoke-static {v1}, Lcom/instagram/android/directshare/d/c;->a(Lcom/instagram/android/directshare/d/c;)Lcom/instagram/feed/d/l;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1c
const/4 v0, 0x1
:goto_1b
return v0
:cond_1c
const/4 v0, 0x0
goto :goto_1b
.end method
.method public final bridge synthetic a(Lcom/instagram/common/h/a;)Z
.registers 3
check-cast p1, Lcom/instagram/feed/d/q;
invoke-direct {p0, p1}, Lcom/instagram/android/directshare/d/d;->a(Lcom/instagram/feed/d/q;)Z
move-result v0
return v0
.end method
.method public final synthetic b(Lcom/instagram/common/h/a;)V
.registers 2
invoke-direct {p0}, Lcom/instagram/android/directshare/d/d;->a()V
return-void
.end method