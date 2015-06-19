.class public final Lcom/google/zxing/client/a/ag;
.super Lcom/google/zxing/client/a/u;
.source "VEventResultParser.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/zxing/client/a/u;-><init>()V
return-void
.end method
.method private static a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
.registers 5
const/4 v2, 0x0
const/4 v0, 0x1
invoke-static {p0, p1, v0, v2}, Lcom/google/zxing/client/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_e
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v1
if-eqz v1, :cond_10
:cond_e
const/4 v0, 0x0
:goto_f
return-object v0
:cond_10
invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
goto :goto_f
.end method
.method private static a(Ljava/lang/String;)Ljava/lang/String;
.registers 2
if-eqz p0, :cond_17
const-string v0, "mailto:"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_12
const-string v0, "MAILTO:"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_17
:cond_12
const/4 v0, 0x7
invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object p0
:cond_17
return-object p0
.end method
.method private static d(Lcom/google/zxing/m;)Lcom/google/zxing/client/a/g;
.registers 16
const-wide/high16 v10, 0x7ff8
const/4 v12, 0x0
const/4 v7, 0x0
invoke-static {p0}, Lcom/google/zxing/client/a/ag;->b(Lcom/google/zxing/m;)Ljava/lang/String;
move-result-object v9
const-string v0, "BEGIN:VEVENT"
invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v0
if-gez v0, :cond_12
move-object v0, v12
:goto_11
return-object v0
:cond_12
const-string v0, "SUMMARY"
invoke-static {v0, v9}, Lcom/google/zxing/client/a/ag;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v0, "DTSTART"
invoke-static {v0, v9}, Lcom/google/zxing/client/a/ag;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-nez v2, :cond_22
move-object v0, v12
goto :goto_11
:cond_22
const-string v0, "DTEND"
invoke-static {v0, v9}, Lcom/google/zxing/client/a/ag;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string v0, "LOCATION"
invoke-static {v0, v9}, Lcom/google/zxing/client/a/ag;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
const-string v0, "ORGANIZER"
invoke-static {v0, v9}, Lcom/google/zxing/client/a/ag;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/zxing/client/a/ag;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
const-string v0, "ATTENDEE"
const/4 v6, 0x1
invoke-static {v0, v9, v6, v7}, Lcom/google/zxing/client/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
move-result-object v13
if-eqz v13, :cond_47
invoke-interface {v13}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_59
:cond_47
move-object v6, v12
:cond_48
if-eqz v6, :cond_74
move v0, v7
:goto_4b
array-length v7, v6
if-ge v0, v7, :cond_74
aget-object v7, v6, v0
invoke-static {v7}, Lcom/google/zxing/client/a/ag;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
aput-object v7, v6, v0
add-int/lit8 v0, v0, 0x1
goto :goto_4b
:cond_59
invoke-interface {v13}, Ljava/util/List;->size()I
move-result v14
new-array v6, v14, [Ljava/lang/String;
move v8, v7
:goto_60
if-ge v8, v14, :cond_48
invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
aput-object v0, v6, v8
add-int/lit8 v0, v8, 0x1
move v8, v0
goto :goto_60
:cond_74
const-string v0, "DESCRIPTION"
invoke-static {v0, v9}, Lcom/google/zxing/client/a/ag;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
const-string v0, "GEO"
invoke-static {v0, v9}, Lcom/google/zxing/client/a/ag;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_8c
move-wide v8, v10
:try_start_83
:goto_83
new-instance v0, Lcom/google/zxing/client/a/g;
invoke-direct/range {v0 .. v11}, Lcom/google/zxing/client/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;DD)V
:try_end_88
.catch Ljava/lang/IllegalArgumentException; {:try_start_83 .. :try_end_88} :catch_89
goto :goto_11
:catch_89
move-exception v0
move-object v0, v12
goto :goto_11
:cond_8c
const/16 v8, 0x3b
invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I
move-result v10
const/4 v8, 0x0
:try_start_93
invoke-virtual {v0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v8
invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
move-result-wide v8
add-int/lit8 v10, v10, 0x1
invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
:try_end_a4
.catch Ljava/lang/NumberFormatException; {:try_start_93 .. :try_end_a4} :catch_a6
move-result-wide v10
goto :goto_83
:catch_a6
move-exception v0
move-object v0, v12
goto/16 :goto_11
.end method
.method public final synthetic a(Lcom/google/zxing/m;)Lcom/google/zxing/client/a/q;
.registers 3
invoke-static {p1}, Lcom/google/zxing/client/a/ag;->d(Lcom/google/zxing/m;)Lcom/google/zxing/client/a/g;
move-result-object v0
return-object v0
.end method