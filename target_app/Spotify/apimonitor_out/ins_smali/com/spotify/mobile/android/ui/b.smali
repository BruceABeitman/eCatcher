.class final Lcom/spotify/mobile/android/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Z
.field private final b:Z
.method private constructor <init>(ZZ)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/b;->a:Z
iput-boolean p2, p0, Lcom/spotify/mobile/android/ui/b;->b:Z
return-void
.end method
.method synthetic constructor <init>(ZZB)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/ui/b;-><init>(ZZ)V
return-void
.end method
.method public final a(Landroid/content/Context;)Z
.registers 3
invoke-static {p1}, Lcom/spotify/mobile/android/util/dv;->b(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_a
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/b;->a:Z
if-nez v0, :cond_14
:cond_a
invoke-static {p1}, Lcom/spotify/mobile/android/util/dv;->a(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_16
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/b;->b:Z
if-eqz v0, :cond_16
:cond_14
const/4 v0, 0x1
:goto_15
return v0
:cond_16
const/4 v0, 0x0
goto :goto_15
.end method