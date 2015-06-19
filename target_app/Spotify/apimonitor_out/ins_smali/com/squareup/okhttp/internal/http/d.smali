.class public final Lcom/squareup/okhttp/internal/http/d;
.super Ljava/lang/Object;
.source "SourceFile"
.method public static a(Ljava/lang/String;)I
.registers 5
:try_start_0
invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
:try_end_3
.catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_19
move-result-wide v0
const-wide/32 v2, 0x7fffffff
cmp-long v2, v0, v2
if-lez v2, :cond_f
const v0, 0x7fffffff
:goto_e
return v0
:cond_f
const-wide/16 v2, 0x0
cmp-long v2, v0, v2
if-gez v2, :cond_17
const/4 v0, 0x0
goto :goto_e
:cond_17
long-to-int v0, v0
goto :goto_e
:catch_19
move-exception v0
const/4 v0, -0x1
goto :goto_e
.end method
.method public static a(Ljava/lang/String;I)I
.registers 4
:goto_0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-ge p1, v0, :cond_15
invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v1, 0x20
if-eq v0, v1, :cond_12
const/16 v1, 0x9
if-ne v0, v1, :cond_15
:cond_12
add-int/lit8 p1, p1, 0x1
goto :goto_0
:cond_15
return p1
.end method
.method public static a(Ljava/lang/String;ILjava/lang/String;)I
.registers 5
:goto_0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-ge p1, v0, :cond_14
invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C
move-result v0
invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I
move-result v0
const/4 v1, -0x1
if-ne v0, v1, :cond_14
add-int/lit8 p1, p1, 0x1
goto :goto_0
:cond_14
return p1
.end method