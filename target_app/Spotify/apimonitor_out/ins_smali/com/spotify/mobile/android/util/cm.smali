.class public Lcom/spotify/mobile/android/util/cm;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Ljava/lang/Runnable;
.field private final b:Ljava/lang/String;
.field private c:Landroid/os/Handler;
.field private d:Lcom/spotify/mobile/android/util/cn;
.field private e:Lcom/spotify/mobile/android/util/cn;
.field private f:Lcom/spotify/mobile/android/util/cn;
.field private g:I
.field private h:Lcom/spotify/mobile/android/util/cn;
.method static constructor <clinit>()V
.registers 3
const-class v0, Lcom/spotify/mobile/android/util/cm;
const-class v1, Lcom/spotify/mobile/android/util/cp;
new-instance v2, Lcom/spotify/mobile/android/util/cp;
invoke-direct {v2}, Lcom/spotify/mobile/android/util/cp;-><init>()V
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/spotify/mobile/android/util/cm;->g:I
iput-object p1, p0, Lcom/spotify/mobile/android/util/cm;->b:Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/mobile/android/util/cm;->a:Ljava/lang/Runnable;
return-void
.end method
.method public final a()Lcom/spotify/mobile/android/util/cl;
.registers 9
const-class v0, Lcom/spotify/mobile/android/util/cm;
const-class v1, Lcom/spotify/mobile/android/util/cp;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
iget-object v0, p0, Lcom/spotify/mobile/android/util/cm;->b:Ljava/lang/String;
iget-object v1, p0, Lcom/spotify/mobile/android/util/cm;->c:Landroid/os/Handler;
if-eqz v1, :cond_20
iget-object v1, p0, Lcom/spotify/mobile/android/util/cm;->c:Landroid/os/Handler;
:goto_f
iget-object v2, p0, Lcom/spotify/mobile/android/util/cm;->a:Ljava/lang/Runnable;
iget-object v3, p0, Lcom/spotify/mobile/android/util/cm;->d:Lcom/spotify/mobile/android/util/cn;
iget-object v4, p0, Lcom/spotify/mobile/android/util/cm;->e:Lcom/spotify/mobile/android/util/cn;
iget-object v5, p0, Lcom/spotify/mobile/android/util/cm;->f:Lcom/spotify/mobile/android/util/cn;
iget v6, p0, Lcom/spotify/mobile/android/util/cm;->g:I
iget-object v7, p0, Lcom/spotify/mobile/android/util/cm;->h:Lcom/spotify/mobile/android/util/cn;
invoke-static/range {v0 .. v7}, Lcom/spotify/mobile/android/util/cp;->a(Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/spotify/mobile/android/util/cn;Lcom/spotify/mobile/android/util/cn;Lcom/spotify/mobile/android/util/cn;ILcom/spotify/mobile/android/util/cn;)Lcom/spotify/mobile/android/util/cl;
move-result-object v0
return-object v0
:cond_20
new-instance v1, Landroid/os/Handler;
invoke-direct {v1}, Landroid/os/Handler;-><init>()V
goto :goto_f
.end method
.method public final a(I)Lcom/spotify/mobile/android/util/cm;
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/util/cm;->g:I
return-object p0
.end method
.method public final a(Lcom/spotify/mobile/android/util/cn;)Lcom/spotify/mobile/android/util/cm;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/util/cm;->d:Lcom/spotify/mobile/android/util/cn;
return-object p0
.end method
.method public final b(Lcom/spotify/mobile/android/util/cn;)Lcom/spotify/mobile/android/util/cm;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/util/cm;->e:Lcom/spotify/mobile/android/util/cn;
return-object p0
.end method
.method public final c(Lcom/spotify/mobile/android/util/cn;)Lcom/spotify/mobile/android/util/cm;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/util/cm;->f:Lcom/spotify/mobile/android/util/cn;
return-object p0
.end method
.method public final d(Lcom/spotify/mobile/android/util/cn;)Lcom/spotify/mobile/android/util/cm;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/util/cm;->h:Lcom/spotify/mobile/android/util/cn;
return-object p0
.end method