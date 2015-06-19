.class public final Lcom/bbm/util/be;
.super Landroid/text/format/DateUtils;
.source "DateUtils.java"
.method public static a(Landroid/content/Context;JI)Ljava/lang/String;
.registers 10
invoke-static {}, Lcom/bbm/util/fb;->e()Z
move-result v0
if-eqz v0, :cond_f
move-object v0, p0
move-wide v1, p1
move-wide v3, p1
move v5, p3
invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
move-result-object v0
:goto_e
return-object v0
:cond_f
move-object v0, p0
move-wide v1, p1
move-wide v3, p1
move v5, p3
invoke-static/range {v0 .. v5}, Lcom/bbm/util/n;->a(Landroid/content/Context;JJI)Ljava/lang/String;
move-result-object v0
goto :goto_e
.end method
.method public static a(Landroid/content/Context;JJ)Ljava/lang/String;
.registers 11
const v5, 0x10a01
invoke-static {}, Lcom/bbm/util/fb;->e()Z
move-result v0
if-eqz v0, :cond_11
move-object v0, p0
move-wide v1, p1
move-wide v3, p3
invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
move-result-object v0
:goto_10
return-object v0
:cond_11
move-object v0, p0
move-wide v1, p1
move-wide v3, p3
invoke-static/range {v0 .. v5}, Lcom/bbm/util/n;->a(Landroid/content/Context;JJI)Ljava/lang/String;
move-result-object v0
goto :goto_10
.end method