.class public abstract Lcom/google/common/base/Equivalence;
.super Ljava/lang/Object;
.source "SourceFile"
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a()Lcom/google/common/base/Equivalence;
.registers 1
sget-object v0, Lcom/google/common/base/Equivalence$Equals;->a:Lcom/google/common/base/Equivalence$Equals;
return-object v0
.end method
.method public static b()Lcom/google/common/base/Equivalence;
.registers 1
sget-object v0, Lcom/google/common/base/Equivalence$Identity;->a:Lcom/google/common/base/Equivalence$Identity;
return-object v0
.end method
.method public final a(Ljava/lang/Object;)I
.registers 3
if-nez p1, :cond_4
const/4 v0, 0x0
:goto_3
return v0
:cond_4
invoke-virtual {p0, p1}, Lcom/google/common/base/Equivalence;->b(Ljava/lang/Object;)I
move-result v0
goto :goto_3
.end method
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
.registers 4
if-ne p1, p2, :cond_4
const/4 v0, 0x1
:goto_3
return v0
:cond_4
if-eqz p1, :cond_8
if-nez p2, :cond_a
:cond_8
const/4 v0, 0x0
goto :goto_3
:cond_a
invoke-virtual {p0, p1, p2}, Lcom/google/common/base/Equivalence;->b(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v0
goto :goto_3
.end method
.method protected abstract b(Ljava/lang/Object;)I
.end method
.method protected abstract b(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method