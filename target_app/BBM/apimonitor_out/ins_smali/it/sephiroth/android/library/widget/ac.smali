.class public final Lit/sephiroth/android/library/widget/ac;
.super Ljava/lang/Object;
.source "ExpandableHListConnector.java"
.field private static d:Ljava/util/ArrayList;
.field public a:Lit/sephiroth/android/library/widget/ad;
.field public b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;
.field public c:I
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/util/ArrayList;
const/4 v1, 0x5
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
sput-object v0, Lit/sephiroth/android/library/widget/ac;->d:Ljava/util/ArrayList;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(IIIILit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;I)Lit/sephiroth/android/library/widget/ac;
.registers 8
invoke-static {}, Lit/sephiroth/android/library/widget/ac;->d()Lit/sephiroth/android/library/widget/ac;
move-result-object v0
invoke-static {p1, p2, p3, p0}, Lit/sephiroth/android/library/widget/ad;->a(IIII)Lit/sephiroth/android/library/widget/ad;
move-result-object v1
iput-object v1, v0, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;
iput-object p4, v0, Lit/sephiroth/android/library/widget/ac;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;
iput p5, v0, Lit/sephiroth/android/library/widget/ac;->c:I
return-object v0
.end method
.method private c()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;
if-eqz v0, :cond_c
iget-object v0, p0, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ad;->b()V
iput-object v1, p0, Lit/sephiroth/android/library/widget/ac;->a:Lit/sephiroth/android/library/widget/ad;
:cond_c
iput-object v1, p0, Lit/sephiroth/android/library/widget/ac;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;
const/4 v0, 0x0
iput v0, p0, Lit/sephiroth/android/library/widget/ac;->c:I
return-void
.end method
.method private static d()Lit/sephiroth/android/library/widget/ac;
.registers 3
sget-object v1, Lit/sephiroth/android/library/widget/ac;->d:Ljava/util/ArrayList;
monitor-enter v1
:try_start_3
sget-object v0, Lit/sephiroth/android/library/widget/ac;->d:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_19
sget-object v0, Lit/sephiroth/android/library/widget/ac;->d:Ljava/util/ArrayList;
const/4 v2, 0x0
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lit/sephiroth/android/library/widget/ac;
:try_end_14
.catchall {:try_start_3 .. :try_end_14} :catchall_20
monitor-exit v1
invoke-direct {v0}, Lit/sephiroth/android/library/widget/ac;->c()V
:goto_18
return-object v0
:cond_19
:try_start_19
new-instance v0, Lit/sephiroth/android/library/widget/ac;
invoke-direct {v0}, Lit/sephiroth/android/library/widget/ac;-><init>()V
monitor-exit v1
:try_end_1f
.catchall {:try_start_19 .. :try_end_1f} :catchall_20
goto :goto_18
:catchall_20
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final a()V
.registers 4
invoke-direct {p0}, Lit/sephiroth/android/library/widget/ac;->c()V
sget-object v1, Lit/sephiroth/android/library/widget/ac;->d:Ljava/util/ArrayList;
monitor-enter v1
:try_start_6
sget-object v0, Lit/sephiroth/android/library/widget/ac;->d:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
const/4 v2, 0x5
if-ge v0, v2, :cond_14
sget-object v0, Lit/sephiroth/android/library/widget/ac;->d:Ljava/util/ArrayList;
invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_14
monitor-exit v1
:try_end_15
.catchall {:try_start_6 .. :try_end_15} :catchall_16
return-void
:catchall_16
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final b()Z
.registers 2
iget-object v0, p0, Lit/sephiroth/android/library/widget/ac;->b:Lit/sephiroth/android/library/widget/ExpandableHListConnector$GroupMetadata;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method