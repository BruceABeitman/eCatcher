.class public Lco/vine/android/util/FlexibleStringHashMap;
.super Ljava/util/HashMap;
.source "FlexibleStringHashMap.java"
.field private static final serialVersionUID:J = -0x13232fbdd9f1a94dL
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/util/HashMap;-><init>()V
return-void
.end method
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
.registers 7
instance-of v3, p1, Ljava/lang/String;
if-eqz v3, :cond_30
invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
if-eqz v2, :cond_b
:goto_a
return-object v2
:cond_b
invoke-virtual {p0}, Lco/vine/android/util/FlexibleStringHashMap;->keySet()Ljava/util/Set;
move-result-object v3
invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_13
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_2e
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
move-object v3, p1
check-cast v3, Ljava/lang/String;
move-object v4, v1
check-cast v4, Ljava/lang/CharSequence;
invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_13
invoke-super {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
goto :goto_a
:cond_2e
const/4 v2, 0x0
goto :goto_a
:cond_30
invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
goto :goto_a
.end method