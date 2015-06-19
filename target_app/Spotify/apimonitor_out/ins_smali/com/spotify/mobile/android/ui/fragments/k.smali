.class public abstract Lcom/spotify/mobile/android/ui/fragments/k;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"
.field private static final a:Lcom/spotify/mobile/android/ui/fragments/l;
.field private static final b:Lcom/spotify/mobile/android/ui/fragments/l;
.field private static final c:Lcom/spotify/mobile/android/ui/fragments/l;
.field private static final d:Lcom/spotify/mobile/android/ui/fragments/l;
.field private static final e:Lcom/spotify/mobile/android/ui/fragments/l;
.field private static final f:Lcom/spotify/mobile/android/ui/fragments/l;
.field private static final g:Lcom/spotify/mobile/android/ui/fragments/l;
.field private final h:Ljava/util/Set;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/k$1;
invoke-direct {v0}, Lcom/spotify/mobile/android/ui/fragments/k$1;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/k;->a:Lcom/spotify/mobile/android/ui/fragments/l;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/k$2;
invoke-direct {v0}, Lcom/spotify/mobile/android/ui/fragments/k$2;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/k;->b:Lcom/spotify/mobile/android/ui/fragments/l;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/k$3;
invoke-direct {v0}, Lcom/spotify/mobile/android/ui/fragments/k$3;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/k;->c:Lcom/spotify/mobile/android/ui/fragments/l;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/k$4;
invoke-direct {v0}, Lcom/spotify/mobile/android/ui/fragments/k$4;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/k;->d:Lcom/spotify/mobile/android/ui/fragments/l;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/k$5;
invoke-direct {v0}, Lcom/spotify/mobile/android/ui/fragments/k$5;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/k;->e:Lcom/spotify/mobile/android/ui/fragments/l;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/k$6;
invoke-direct {v0}, Lcom/spotify/mobile/android/ui/fragments/k$6;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/k;->f:Lcom/spotify/mobile/android/ui/fragments/l;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/k$7;
invoke-direct {v0}, Lcom/spotify/mobile/android/ui/fragments/k$7;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/ui/fragments/k;->g:Lcom/spotify/mobile/android/ui/fragments/l;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/k;->h:Ljava/util/Set;
return-void
.end method
.method private a(Lcom/spotify/mobile/android/ui/fragments/l;Ljava/lang/Object;Ljava/lang/Object;)V
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/k;->h:Ljava/util/Set;
new-instance v1, Lcom/spotify/mobile/android/ui/fragments/k$8;
invoke-direct {v1, p0, p1, p2, p3}, Lcom/spotify/mobile/android/ui/fragments/k$8;-><init>(Lcom/spotify/mobile/android/ui/fragments/k;Lcom/spotify/mobile/android/ui/fragments/l;Ljava/lang/Object;Ljava/lang/Object;)V
invoke-static {v0, v1}, Lcom/google/common/collect/h;->a(Ljava/lang/Iterable;Lcom/google/common/base/j;)Z
return-void
.end method
.method public final a(Landroid/app/Activity;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;)V
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/k;->a:Lcom/spotify/mobile/android/ui/fragments/l;
const/4 v1, 0x0
invoke-direct {p0, v0, p1, v1}, Lcom/spotify/mobile/android/ui/fragments/k;->a(Lcom/spotify/mobile/android/ui/fragments/l;Ljava/lang/Object;Ljava/lang/Object;)V
return-void
.end method
.method public a(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/k;->b:Lcom/spotify/mobile/android/ui/fragments/l;
const/4 v1, 0x0
invoke-direct {p0, v0, p1, v1}, Lcom/spotify/mobile/android/ui/fragments/k;->a(Lcom/spotify/mobile/android/ui/fragments/l;Ljava/lang/Object;Ljava/lang/Object;)V
return-void
.end method
.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/k;->c:Lcom/spotify/mobile/android/ui/fragments/l;
invoke-direct {p0, v0, p1, p2}, Lcom/spotify/mobile/android/ui/fragments/k;->a(Lcom/spotify/mobile/android/ui/fragments/l;Ljava/lang/Object;Ljava/lang/Object;)V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/ui/fragments/m;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/k;->h:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public final d(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/k;->e:Lcom/spotify/mobile/android/ui/fragments/l;
const/4 v1, 0x0
invoke-direct {p0, v0, p1, v1}, Lcom/spotify/mobile/android/ui/fragments/k;->a(Lcom/spotify/mobile/android/ui/fragments/l;Ljava/lang/Object;Ljava/lang/Object;)V
return-void
.end method
.method public final x()V
.registers 3
const/4 v1, 0x0
invoke-super {p0}, Landroid/support/v4/app/Fragment;->x()V
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/k;->d:Lcom/spotify/mobile/android/ui/fragments/l;
invoke-direct {p0, v0, v1, v1}, Lcom/spotify/mobile/android/ui/fragments/k;->a(Lcom/spotify/mobile/android/ui/fragments/l;Ljava/lang/Object;Ljava/lang/Object;)V
return-void
.end method
.method public final y()V
.registers 3
const/4 v1, 0x0
invoke-super {p0}, Landroid/support/v4/app/Fragment;->y()V
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/k;->f:Lcom/spotify/mobile/android/ui/fragments/l;
invoke-direct {p0, v0, v1, v1}, Lcom/spotify/mobile/android/ui/fragments/k;->a(Lcom/spotify/mobile/android/ui/fragments/l;Ljava/lang/Object;Ljava/lang/Object;)V
return-void
.end method
.method public final z()V
.registers 3
const/4 v1, 0x0
invoke-super {p0}, Landroid/support/v4/app/Fragment;->z()V
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/k;->g:Lcom/spotify/mobile/android/ui/fragments/l;
invoke-direct {p0, v0, v1, v1}, Lcom/spotify/mobile/android/ui/fragments/k;->a(Lcom/spotify/mobile/android/ui/fragments/l;Ljava/lang/Object;Ljava/lang/Object;)V
return-void
.end method