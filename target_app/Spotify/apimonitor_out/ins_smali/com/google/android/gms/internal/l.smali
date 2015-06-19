.class public final Lcom/google/android/gms/internal/l;
.super Ljava/lang/Object;
.field public static final a:Lcom/google/android/gms/internal/l;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/l;
invoke-direct {v0}, Lcom/google/android/gms/internal/l;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/l;->a:Lcom/google/android/gms/internal/l;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ac;)Lcom/google/android/gms/internal/ah;
.registers 16
const/4 v0, 0x0
invoke-virtual {p1}, Lcom/google/android/gms/internal/ac;->a()Ljava/util/Date;
move-result-object v1
if-eqz v1, :cond_52
invoke-virtual {v1}, Ljava/util/Date;->getTime()J
move-result-wide v2
:goto_b
invoke-virtual {p1}, Lcom/google/android/gms/internal/ac;->b()Ljava/lang/String;
move-result-object v13
invoke-virtual {p1}, Lcom/google/android/gms/internal/ac;->c()I
move-result v5
invoke-virtual {p1}, Lcom/google/android/gms/internal/ac;->d()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z
move-result v4
if-nez v4, :cond_55
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v6
:goto_26
invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ac;->a(Landroid/content/Context;)Z
move-result v7
invoke-virtual {p1}, Lcom/google/android/gms/internal/ac;->k()I
move-result v8
invoke-virtual {p1}, Lcom/google/android/gms/internal/ac;->e()Landroid/location/Location;
move-result-object v12
const-class v1, Lcom/google/ads/mediation/a/a;
invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ac;->a(Ljava/lang/Class;)Landroid/os/Bundle;
move-result-object v4
invoke-virtual {p1}, Lcom/google/android/gms/internal/ac;->f()Z
move-result v9
invoke-virtual {p1}, Lcom/google/android/gms/internal/ac;->g()Ljava/lang/String;
move-result-object v10
invoke-virtual {p1}, Lcom/google/android/gms/internal/ac;->h()Lcom/google/android/gms/ads/search/a;
move-result-object v1
if-eqz v1, :cond_57
new-instance v11, Lcom/google/android/gms/internal/av;
invoke-direct {v11, v1}, Lcom/google/android/gms/internal/av;-><init>(Lcom/google/android/gms/ads/search/a;)V
:goto_4b
new-instance v0, Lcom/google/android/gms/internal/ah;
const/4 v1, 0x3
invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/ah;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/av;Landroid/location/Location;Ljava/lang/String;)V
return-object v0
:cond_52
const-wide/16 v2, -0x1
goto :goto_b
:cond_55
move-object v6, v0
goto :goto_26
:cond_57
move-object v11, v0
goto :goto_4b
.end method
.method public static a()Lcom/google/android/gms/internal/l;
.registers 1
sget-object v0, Lcom/google/android/gms/internal/l;->a:Lcom/google/android/gms/internal/l;
return-object v0
.end method