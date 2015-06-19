.class public final Lcom/spotify/mobile/android/spotlets/common/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/spotlets/common/b/a/c;
.field static final a:[Ljava/lang/String;
.field final b:Landroid/content/Context;
.field final c:I
.field private final e:Landroid/support/v4/app/z;
.field private final f:Landroid/support/v4/app/y;
.field private final g:Ljava/util/Set;
.field private h:Lcom/spotify/mobile/android/spotlets/common/b/a/d;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x5
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "logged_in"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "product_type"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "country_code"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "current_user"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "connected"
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/spotlets/common/b/a/a;->a:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/y;I)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/spotify/mobile/android/spotlets/common/b/a/a$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/common/b/a/a$1;-><init>(Lcom/spotify/mobile/android/spotlets/common/b/a/a;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/a;->e:Landroid/support/v4/app/z;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/a;->g:Ljava/util/Set;
sget-object v0, Lcom/spotify/mobile/android/spotlets/common/b/a/a;->d:Lcom/spotify/mobile/android/spotlets/common/b/a/d;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/a;->h:Lcom/spotify/mobile/android/spotlets/common/b/a/d;
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/a;->b:Landroid/content/Context;
invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/y;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/a;->f:Landroid/support/v4/app/y;
iput p3, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/a;->c:I
return-void
.end method
.method public final a()V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/a;->f:Landroid/support/v4/app/y;
iget v1, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/a;->c:I
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/a;->e:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
return-void
.end method
.method final a(Lcom/spotify/mobile/android/spotlets/common/b/a/d;)V
.registers 4
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/a;->h:Lcom/spotify/mobile/android/spotlets/common/b/a/d;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/a;->g:Ljava/util/Set;
new-instance v1, Lcom/spotify/mobile/android/spotlets/common/b/a/a$2;
invoke-direct {v1, p0, p1}, Lcom/spotify/mobile/android/spotlets/common/b/a/a$2;-><init>(Lcom/spotify/mobile/android/spotlets/common/b/a/a;Lcom/spotify/mobile/android/spotlets/common/b/a/d;)V
invoke-static {v0, v1}, Lcom/google/common/collect/h;->a(Ljava/lang/Iterable;Lcom/google/common/base/j;)Z
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/common/b/a/e;)V
.registers 3
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/common/b/a/a;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/a;->h:Lcom/spotify/mobile/android/spotlets/common/b/a/d;
invoke-interface {p1, v0}, Lcom/spotify/mobile/android/spotlets/common/b/a/e;->a(Lcom/spotify/mobile/android/spotlets/common/b/a/d;)Z
move-result v0
if-nez v0, :cond_13
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/a;->g:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
:cond_13
return-void
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/a;->f:Landroid/support/v4/app/y;
iget v1, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/a;->c:I
invoke-virtual {v0, v1}, Landroid/support/v4/app/y;->a(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/a;->g:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->clear()V
return-void
.end method
.method public final c()Lcom/spotify/mobile/android/spotlets/common/b/a/d;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/b/a/a;->h:Lcom/spotify/mobile/android/spotlets/common/b/a/d;
return-object v0
.end method