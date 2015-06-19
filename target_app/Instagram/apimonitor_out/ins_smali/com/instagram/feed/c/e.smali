.class public final Lcom/instagram/feed/c/e;
.super Ljava/lang/Object;
.source "InsightsUtil.java"
.method public static a(Ljava/lang/String;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Lcom/instagram/feed/c/c;
.registers 5
invoke-static {p1, p2}, Lcom/instagram/feed/c/e;->b(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z
move-result v0
if-eqz v0, :cond_14
invoke-static {p0}, Lcom/instagram/feed/c/e;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_a
new-instance v1, Lcom/instagram/feed/c/c;
invoke-direct {v1, v0, p2}, Lcom/instagram/feed/c/c;-><init>(Ljava/lang/String;Lcom/instagram/feed/g/a;)V
invoke-virtual {v1, p1}, Lcom/instagram/feed/c/c;->a(Lcom/instagram/feed/d/l;)Lcom/instagram/feed/c/c;
move-result-object v0
return-object v0
:cond_14
invoke-static {p0}, Lcom/instagram/feed/c/e;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_a
.end method
.method private static a(Ljava/lang/String;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "instagram_ad_"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static a(Lcom/instagram/common/analytics/b;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V
.registers 4
invoke-static {p1, p2}, Lcom/instagram/feed/c/e;->b(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z
move-result v0
if-eqz v0, :cond_e
invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;
move-result-object v0
invoke-interface {v0, p0}, Lcom/instagram/common/analytics/d;->b(Lcom/instagram/common/analytics/b;)V
:goto_d
:cond_d
return-void
:cond_e
invoke-static {p1, p2}, Lcom/instagram/feed/c/e;->c(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z
move-result v0
if-nez v0, :cond_1a
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->ae()Z
move-result v0
if-eqz v0, :cond_d
:cond_1a
invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;
move-result-object v0
invoke-interface {v0, p0}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V
goto :goto_d
.end method
.method public static a(Lcom/instagram/feed/d/l;)V
.registers 5
invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;
move-result-object v0
new-instance v1, Lcom/instagram/feed/c/c;
const-string v2, "invalidation"
invoke-static {v2}, Lcom/instagram/feed/c/e;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-direct {v1, v2, v3}, Lcom/instagram/feed/c/c;-><init>(Ljava/lang/String;Lcom/instagram/feed/g/a;)V
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->ag()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/instagram/feed/c/c;->a(Ljava/lang/String;)Lcom/instagram/feed/c/c;
move-result-object v1
const-string v2, "INSTAGRAM_MEDIA_WAS_HIDDEN"
invoke-virtual {v1, v2}, Lcom/instagram/feed/c/c;->b(Ljava/lang/String;)Lcom/instagram/feed/c/c;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/feed/c/c;->a()Lcom/instagram/common/analytics/b;
move-result-object v1
invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V
return-void
.end method
.method public static a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;Ljava/lang/String;)V
.registers 6
invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;
move-result-object v0
new-instance v1, Lcom/instagram/feed/c/c;
const-string v2, "hide_response"
invoke-static {v2}, Lcom/instagram/feed/c/e;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, p1}, Lcom/instagram/feed/c/c;-><init>(Ljava/lang/String;Lcom/instagram/feed/g/a;)V
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->ag()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/instagram/feed/c/c;->a(Ljava/lang/String;)Lcom/instagram/feed/c/c;
move-result-object v1
invoke-virtual {v1, p2}, Lcom/instagram/feed/c/c;->b(Ljava/lang/String;)Lcom/instagram/feed/c/c;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/feed/c/c;->a()Lcom/instagram/common/analytics/b;
move-result-object v1
invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Lcom/instagram/common/analytics/b;)V
return-void
.end method
.method public static a(Lcom/instagram/user/c/a;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V
.registers 6
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->b()Lcom/instagram/user/c/a;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/instagram/user/c/a;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2f
const-string v0, "brand_profile"
:goto_c
invoke-static {p1, p2}, Lcom/instagram/feed/c/e;->b(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z
move-result v1
if-eqz v1, :cond_2e
invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;
move-result-object v1
new-instance v2, Lcom/instagram/feed/c/c;
invoke-static {v0}, Lcom/instagram/feed/c/e;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-direct {v2, v0, p2}, Lcom/instagram/feed/c/c;-><init>(Ljava/lang/String;Lcom/instagram/feed/g/a;)V
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->ag()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Lcom/instagram/feed/c/c;->a(Ljava/lang/String;)Lcom/instagram/feed/c/c;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/feed/c/c;->a()Lcom/instagram/common/analytics/b;
move-result-object v0
invoke-interface {v1, v0}, Lcom/instagram/common/analytics/d;->b(Lcom/instagram/common/analytics/b;)V
:cond_2e
return-void
:cond_2f
const-string v0, "user_profile"
goto :goto_c
.end method
.method public static a(Ljava/lang/String;Lcom/instagram/feed/d/l;ILcom/instagram/feed/g/a;)V
.registers 5
invoke-static {p1, p3}, Lcom/instagram/feed/c/e;->a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z
move-result v0
if-eqz v0, :cond_15
invoke-static {p0, p1, p3}, Lcom/instagram/feed/c/e;->a(Ljava/lang/String;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Lcom/instagram/feed/c/c;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/instagram/feed/c/c;->a(I)Lcom/instagram/feed/c/c;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/feed/c/c;->a()Lcom/instagram/common/analytics/b;
move-result-object v0
invoke-static {v0, p1, p3}, Lcom/instagram/feed/c/e;->a(Lcom/instagram/common/analytics/b;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V
:cond_15
return-void
.end method
.method public static a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z
.registers 3
invoke-static {p0, p1}, Lcom/instagram/feed/c/e;->c(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z
move-result v0
if-nez v0, :cond_12
invoke-static {p0, p1}, Lcom/instagram/feed/c/e;->b(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z
move-result v0
if-nez v0, :cond_12
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->ae()Z
move-result v0
if-eqz v0, :cond_14
:cond_12
const/4 v0, 0x1
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method
.method private static b(Ljava/lang/String;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "instagram_organic_"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static b(Ljava/lang/String;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V
.registers 4
invoke-static {p1, p2}, Lcom/instagram/feed/c/e;->a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z
move-result v0
if-eqz v0, :cond_11
invoke-static {p0, p1, p2}, Lcom/instagram/feed/c/e;->a(Ljava/lang/String;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Lcom/instagram/feed/c/c;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/feed/c/c;->a()Lcom/instagram/common/analytics/b;
move-result-object v0
invoke-static {v0, p1, p2}, Lcom/instagram/feed/c/e;->a(Lcom/instagram/common/analytics/b;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V
:cond_11
return-void
.end method
.method public static b(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z
.registers 3
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->Z()Z
move-result v0
if-eqz v0, :cond_e
invoke-interface {p1}, Lcom/instagram/feed/g/a;->n_()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public static c(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)Z
.registers 3
invoke-virtual {p0}, Lcom/instagram/feed/d/l;->af()Z
move-result v0
if-eqz v0, :cond_e
invoke-interface {p1}, Lcom/instagram/feed/g/a;->U()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method