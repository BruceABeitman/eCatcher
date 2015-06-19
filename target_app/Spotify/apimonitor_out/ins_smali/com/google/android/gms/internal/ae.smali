.class public final Lcom/google/android/gms/internal/ae;
.super Ljava/lang/Object;
.field private final a:Lcom/google/android/gms/internal/be;
.field private final b:Lcom/google/android/gms/internal/l;
.field private c:Lcom/google/android/gms/ads/a;
.field private d:Lcom/google/android/gms/internal/t;
.field private e:[Lcom/google/android/gms/ads/d;
.field private f:Ljava/lang/String;
.field private g:Landroid/view/ViewGroup;
.field private h:Lcom/google/android/gms/ads/doubleclick/a;
.field private i:Lcom/google/android/gms/ads/c/a;
.method public constructor <init>(Landroid/view/ViewGroup;)V
.registers 5
const/4 v0, 0x0
const/4 v1, 0x0
invoke-static {}, Lcom/google/android/gms/internal/l;->a()Lcom/google/android/gms/internal/l;
move-result-object v2
invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ae;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/l;)V
return-void
.end method
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V
.registers 5
invoke-static {}, Lcom/google/android/gms/internal/l;->a()Lcom/google/android/gms/internal/l;
move-result-object v0
invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ae;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/l;)V
return-void
.end method
.method private constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/l;)V
.registers 9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/android/gms/internal/be;
invoke-direct {v0}, Lcom/google/android/gms/internal/be;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/ae;->a:Lcom/google/android/gms/internal/be;
iput-object p1, p0, Lcom/google/android/gms/internal/ae;->g:Landroid/view/ViewGroup;
iput-object p4, p0, Lcom/google/android/gms/internal/ae;->b:Lcom/google/android/gms/internal/l;
if-eqz p2, :cond_3a
invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
move-result-object v1
:try_start_14
new-instance v0, Lcom/google/android/gms/internal/an;
invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/an;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/an;->a(Z)[Lcom/google/android/gms/ads/d;
move-result-object v2
iput-object v2, p0, Lcom/google/android/gms/internal/ae;->e:[Lcom/google/android/gms/ads/d;
invoke-virtual {v0}, Lcom/google/android/gms/internal/an;->a()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/ae;->f:Ljava/lang/String;
:try_end_25
.catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_25} :catch_3b
invoke-virtual {p1}, Landroid/view/ViewGroup;->isInEditMode()Z
move-result v0
if-eqz v0, :cond_3a
new-instance v0, Lcom/google/android/gms/internal/ak;
iget-object v2, p0, Lcom/google/android/gms/internal/ae;->e:[Lcom/google/android/gms/ads/d;
const/4 v3, 0x0
aget-object v2, v2, v3
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ak;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V
const-string v1, "Ads by Google"
invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/eo;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ak;Ljava/lang/String;)V
:goto_3a
:cond_3a
return-void
:catch_3b
move-exception v0
new-instance v2, Lcom/google/android/gms/internal/ak;
sget-object v3, Lcom/google/android/gms/ads/d;->a:Lcom/google/android/gms/ads/d;
invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ak;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V
invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-static {p1, v2, v1, v0}, Lcom/google/android/gms/internal/eo;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ak;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_3a
.end method
.method public final a()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/internal/ae;->d:Lcom/google/android/gms/internal/t;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/google/android/gms/internal/ae;->d:Lcom/google/android/gms/internal/t;
invoke-interface {v0}, Lcom/google/android/gms/internal/t;->b()V
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a
:cond_9
:goto_9
return-void
:catch_a
move-exception v0
const-string v1, "Failed to destroy AdView."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_9
.end method
.method public final a(Lcom/google/android/gms/ads/a;)V
.registers 4
:try_start_0
iput-object p1, p0, Lcom/google/android/gms/internal/ae;->c:Lcom/google/android/gms/ads/a;
iget-object v0, p0, Lcom/google/android/gms/internal/ae;->d:Lcom/google/android/gms/internal/t;
if-eqz v0, :cond_12
iget-object v1, p0, Lcom/google/android/gms/internal/ae;->d:Lcom/google/android/gms/internal/t;
if-eqz p1, :cond_13
new-instance v0, Lcom/google/android/gms/internal/h;
invoke-direct {v0, p1}, Lcom/google/android/gms/internal/h;-><init>(Lcom/google/android/gms/ads/a;)V
:goto_f
invoke-interface {v1, v0}, Lcom/google/android/gms/internal/t;->a(Lcom/google/android/gms/internal/q;)V
:cond_12
:goto_12
:try_end_12
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_15
return-void
:cond_13
const/4 v0, 0x0
goto :goto_f
:catch_15
move-exception v0
const-string v1, "Failed to set the AdListener."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_12
.end method
.method public final a(Lcom/google/android/gms/internal/ac;)V
.registers 6
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/internal/ae;->d:Lcom/google/android/gms/internal/t;
if-nez v0, :cond_6e
iget-object v0, p0, Lcom/google/android/gms/internal/ae;->e:[Lcom/google/android/gms/ads/d;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/google/android/gms/internal/ae;->f:Ljava/lang/String;
if-nez v0, :cond_1f
:cond_c
iget-object v0, p0, Lcom/google/android/gms/internal/ae;->d:Lcom/google/android/gms/internal/t;
if-nez v0, :cond_1f
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "The ad size and ad unit ID must be set before loadAd is called."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:catch_18
:try_end_18
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_18
move-exception v0
const-string v1, "Failed to load ad."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
:goto_1e
:cond_1e
return-void
:try_start_1f
:cond_1f
iget-object v0, p0, Lcom/google/android/gms/internal/ae;->g:Landroid/view/ViewGroup;
invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
move-result-object v0
new-instance v1, Lcom/google/android/gms/internal/ak;
iget-object v2, p0, Lcom/google/android/gms/internal/ae;->e:[Lcom/google/android/gms/ads/d;
invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ak;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/d;)V
iget-object v2, p0, Lcom/google/android/gms/internal/ae;->f:Ljava/lang/String;
iget-object v3, p0, Lcom/google/android/gms/internal/ae;->a:Lcom/google/android/gms/internal/be;
invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/i;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ak;Ljava/lang/String;Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/t;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/ae;->d:Lcom/google/android/gms/internal/t;
iget-object v0, p0, Lcom/google/android/gms/internal/ae;->c:Lcom/google/android/gms/ads/a;
if-eqz v0, :cond_46
iget-object v0, p0, Lcom/google/android/gms/internal/ae;->d:Lcom/google/android/gms/internal/t;
new-instance v1, Lcom/google/android/gms/internal/h;
iget-object v2, p0, Lcom/google/android/gms/internal/ae;->c:Lcom/google/android/gms/ads/a;
invoke-direct {v1, v2}, Lcom/google/android/gms/internal/h;-><init>(Lcom/google/android/gms/ads/a;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/internal/t;->a(Lcom/google/android/gms/internal/q;)V
:cond_46
iget-object v0, p0, Lcom/google/android/gms/internal/ae;->h:Lcom/google/android/gms/ads/doubleclick/a;
if-eqz v0, :cond_56
iget-object v0, p0, Lcom/google/android/gms/internal/ae;->d:Lcom/google/android/gms/internal/t;
new-instance v1, Lcom/google/android/gms/internal/o;
iget-object v2, p0, Lcom/google/android/gms/internal/ae;->h:Lcom/google/android/gms/ads/doubleclick/a;
invoke-direct {v1, v2}, Lcom/google/android/gms/internal/o;-><init>(Lcom/google/android/gms/ads/doubleclick/a;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/internal/t;->a(Lcom/google/android/gms/internal/z;)V
:cond_56
iget-object v0, p0, Lcom/google/android/gms/internal/ae;->i:Lcom/google/android/gms/ads/c/a;
if-eqz v0, :cond_66
iget-object v0, p0, Lcom/google/android/gms/internal/ae;->d:Lcom/google/android/gms/internal/t;
new-instance v1, Lcom/google/android/gms/internal/cw;
iget-object v2, p0, Lcom/google/android/gms/internal/ae;->i:Lcom/google/android/gms/ads/c/a;
invoke-direct {v1, v2}, Lcom/google/android/gms/internal/cw;-><init>(Lcom/google/android/gms/ads/c/a;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/internal/t;->a(Lcom/google/android/gms/internal/ct;)V
:try_end_66
.catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_66} :catch_18
:cond_66
:try_start_66
iget-object v0, p0, Lcom/google/android/gms/internal/ae;->d:Lcom/google/android/gms/internal/t;
invoke-interface {v0}, Lcom/google/android/gms/internal/t;->a()Lcom/google/android/gms/dynamic/b;
:try_end_6b
.catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_6b} :catch_a1
move-result-object v0
if-nez v0, :cond_95
:cond_6e
:goto_6e
:try_start_6e
iget-object v0, p0, Lcom/google/android/gms/internal/ae;->d:Lcom/google/android/gms/internal/t;
iget-object v1, p0, Lcom/google/android/gms/internal/ae;->b:Lcom/google/android/gms/internal/l;
iget-object v1, p0, Lcom/google/android/gms/internal/ae;->g:Landroid/view/ViewGroup;
invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1, p1}, Lcom/google/android/gms/internal/l;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ac;)Lcom/google/android/gms/internal/ah;
move-result-object v1
invoke-interface {v0, v1}, Lcom/google/android/gms/internal/t;->a(Lcom/google/android/gms/internal/ah;)Z
move-result v0
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/google/android/gms/internal/ae;->a:Lcom/google/android/gms/internal/be;
invoke-virtual {p1}, Lcom/google/android/gms/internal/ac;->i()Ljava/util/Map;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/be;->a(Ljava/util/Map;)V
iget-object v0, p0, Lcom/google/android/gms/internal/ae;->a:Lcom/google/android/gms/internal/be;
invoke-virtual {p1}, Lcom/google/android/gms/internal/ac;->j()Ljava/util/Map;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/be;->b(Ljava/util/Map;)V
:try_end_94
.catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_94} :catch_18
goto :goto_1e
:cond_95
:try_start_95
iget-object v1, p0, Lcom/google/android/gms/internal/ae;->g:Landroid/view/ViewGroup;
invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
:try_end_a0
.catch Landroid/os/RemoteException; {:try_start_95 .. :try_end_a0} :catch_a1
goto :goto_6e
:catch_a1
move-exception v0
:try_start_a2
const-string v1, "Failed to get an ad frame."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_a7
.catch Landroid/os/RemoteException; {:try_start_a2 .. :try_end_a7} :catch_18
goto :goto_6e
.end method
.method public final a(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/ae;->f:Ljava/lang/String;
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "The ad unit ID can only be set once on AdView."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iput-object p1, p0, Lcom/google/android/gms/internal/ae;->f:Ljava/lang/String;
return-void
.end method
.method public final varargs a([Lcom/google/android/gms/ads/d;)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/internal/ae;->e:[Lcom/google/android/gms/ads/d;
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "The ad size can only be set once on AdView."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iput-object p1, p0, Lcom/google/android/gms/internal/ae;->e:[Lcom/google/android/gms/ads/d;
:try_start_e
iget-object v0, p0, Lcom/google/android/gms/internal/ae;->d:Lcom/google/android/gms/internal/t;
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/google/android/gms/internal/ae;->d:Lcom/google/android/gms/internal/t;
new-instance v1, Lcom/google/android/gms/internal/ak;
iget-object v2, p0, Lcom/google/android/gms/internal/ae;->g:Landroid/view/ViewGroup;
invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
move-result-object v2
iget-object v3, p0, Lcom/google/android/gms/internal/ae;->e:[Lcom/google/android/gms/ads/d;
invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ak;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/d;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/internal/t;->a(Lcom/google/android/gms/internal/ak;)V
:goto_24
:cond_24
:try_end_24
.catch Landroid/os/RemoteException; {:try_start_e .. :try_end_24} :catch_2a
iget-object v0, p0, Lcom/google/android/gms/internal/ae;->g:Landroid/view/ViewGroup;
invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V
return-void
:catch_2a
move-exception v0
const-string v1, "Failed to set the ad size."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_24
.end method
.method public final b()Lcom/google/android/gms/ads/d;
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/internal/ae;->d:Lcom/google/android/gms/internal/t;
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/google/android/gms/internal/ae;->d:Lcom/google/android/gms/internal/t;
invoke-interface {v0}, Lcom/google/android/gms/internal/t;->i()Lcom/google/android/gms/internal/ak;
move-result-object v0
iget v1, v0, Lcom/google/android/gms/internal/ak;->f:I
iget v2, v0, Lcom/google/android/gms/internal/ak;->c:I
iget-object v0, v0, Lcom/google/android/gms/internal/ak;->b:Ljava/lang/String;
invoke-static {v1, v2, v0}, Lcom/google/android/gms/ads/f;->a(IILjava/lang/String;)Lcom/google/android/gms/ads/d;
:try_end_13
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15
move-result-object v0
:goto_14
return-object v0
:catch_15
move-exception v0
const-string v1, "Failed to get the current AdSize."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
:cond_1b
iget-object v0, p0, Lcom/google/android/gms/internal/ae;->e:[Lcom/google/android/gms/ads/d;
if-eqz v0, :cond_25
iget-object v0, p0, Lcom/google/android/gms/internal/ae;->e:[Lcom/google/android/gms/ads/d;
const/4 v1, 0x0
aget-object v0, v0, v1
goto :goto_14
:cond_25
const/4 v0, 0x0
goto :goto_14
.end method
.method public final c()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/internal/ae;->d:Lcom/google/android/gms/internal/t;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/google/android/gms/internal/ae;->d:Lcom/google/android/gms/internal/t;
invoke-interface {v0}, Lcom/google/android/gms/internal/t;->d()V
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a
:cond_9
:goto_9
return-void
:catch_a
move-exception v0
const-string v1, "Failed to call pause."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_9
.end method
.method public final d()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/internal/ae;->d:Lcom/google/android/gms/internal/t;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/google/android/gms/internal/ae;->d:Lcom/google/android/gms/internal/t;
invoke-interface {v0}, Lcom/google/android/gms/internal/t;->e()V
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a
:cond_9
:goto_9
return-void
:catch_a
move-exception v0
const-string v1, "Failed to call resume."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_9
.end method