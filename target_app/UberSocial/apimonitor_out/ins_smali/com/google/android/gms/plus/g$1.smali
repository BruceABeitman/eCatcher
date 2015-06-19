.class final Lcom/google/android/gms/plus/g$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/c;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()I
.registers 2
const/4 v0, 0x2
return v0
.end method
.method public a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/plus/internal/l;
.registers 17
new-instance v0, Lcom/google/android/gms/plus/h;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/google/android/gms/plus/h;-><init>(Lcom/google/android/gms/plus/g$1;)V
if-eqz p4, :cond_47
instance-of v0, p4, Lcom/google/android/gms/plus/h;
const-string v1, "Must provide valid PlusOptions!"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->b(ZLjava/lang/Object;)V
check-cast p4, Lcom/google/android/gms/plus/h;
:goto_11
new-instance v9, Lcom/google/android/gms/plus/internal/l;
new-instance v0, Lcom/google/android/gms/plus/internal/h;
invoke-virtual {p3}, Lcom/google/android/gms/internal/ee;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {p3}, Lcom/google/android/gms/internal/ee;->e()[Ljava/lang/String;
move-result-object v2
iget-object v3, p4, Lcom/google/android/gms/plus/h;->b:Ljava/util/Set;
const/4 v4, 0x0
new-array v4, v4, [Ljava/lang/String;
invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v3
check-cast v3, [Ljava/lang/String;
const/4 v4, 0x0
new-array v4, v4, [Ljava/lang/String;
invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v5
invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v6
const/4 v7, 0x0
new-instance v8, Lcom/google/android/gms/plus/internal/PlusCommonExtras;
invoke-direct {v8}, Lcom/google/android/gms/plus/internal/PlusCommonExtras;-><init>()V
invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/plus/internal/h;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/PlusCommonExtras;)V
move-object v1, v9
move-object v2, p1
move-object v3, p2
move-object v4, p5
move-object/from16 v5, p6
move-object v6, v0
invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/plus/internal/l;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/plus/internal/h;)V
return-object v9
:cond_47
move-object p4, v0
goto :goto_11
.end method
.method public synthetic b(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/common/api/b;
.registers 8
invoke-virtual/range {p0 .. p6}, Lcom/google/android/gms/plus/g$1;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/plus/internal/l;
move-result-object v0
return-object v0
.end method