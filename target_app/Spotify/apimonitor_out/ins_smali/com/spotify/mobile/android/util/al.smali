.class public final Lcom/spotify/mobile/android/util/al;
.super Ljava/lang/Object;
.source "SourceFile"
.method public static a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
.registers 5
invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/database/Cursor;
invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_12
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_13
:cond_12
:goto_12
return-object p2
:cond_13
move-object p2, v0
goto :goto_12
.end method
.method public static a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 5
invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/database/Cursor;
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v0
invoke-static {p0, v0, p2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static a(Landroid/database/Cursor;I)Z
.registers 3
invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/database/Cursor;
invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public static a(Landroid/database/Cursor;Ljava/lang/String;)Z
.registers 4
invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/database/Cursor;
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v0
invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v0
return v0
.end method
.method public static b(Landroid/database/Cursor;Ljava/lang/String;)I
.registers 4
invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/database/Cursor;
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v1
invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v0
return v0
.end method
.method public static b(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
.registers 4
invoke-static {p0, p1, p2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v0
invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/text/Spanned;
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method