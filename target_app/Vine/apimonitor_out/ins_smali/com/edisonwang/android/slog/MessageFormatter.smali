.class public final Lcom/edisonwang/android/slog/MessageFormatter;
.super Ljava/lang/Object;
.source "MessageFormatter.java"
.field static final DELIM_START:C = '{'
.field static final DELIM_STOP:C = '}'
.field static final DELIM_STR:Ljava/lang/String; = "{}"
.field private static final ESCAPE_CHAR:C = '\\'
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lcom/edisonwang/android/slog/FormattingTuple;
.registers 10
const/4 v7, 0x0
invoke-static {p1}, Lcom/edisonwang/android/slog/MessageFormatter;->getThrowableCandidate([Ljava/lang/Object;)Ljava/lang/Throwable;
move-result-object v4
if-nez p0, :cond_d
new-instance v5, Lcom/edisonwang/android/slog/FormattingTuple;
invoke-direct {v5, v7, p1, v4}, Lcom/edisonwang/android/slog/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
:goto_c
return-object v5
:cond_d
if-nez p1, :cond_15
new-instance v5, Lcom/edisonwang/android/slog/FormattingTuple;
invoke-direct {v5, p0}, Lcom/edisonwang/android/slog/FormattingTuple;-><init>(Ljava/lang/String;)V
goto :goto_c
:cond_15
const/4 v1, 0x0
new-instance v3, Ljava/lang/StringBuffer;
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v5
add-int/lit8 v5, v5, 0x32
invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V
const/4 v0, 0x0
:goto_22
array-length v5, p1
if-ge v0, v5, :cond_96
const-string v5, "{}"
invoke-virtual {p0, v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
move-result v2
const/4 v5, -0x1
if-ne v2, v5, :cond_4b
if-nez v1, :cond_36
new-instance v5, Lcom/edisonwang/android/slog/FormattingTuple;
invoke-direct {v5, p0, p1, v4}, Lcom/edisonwang/android/slog/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
goto :goto_c
:cond_36
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v5
invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
new-instance v5, Lcom/edisonwang/android/slog/FormattingTuple;
invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6, p1, v4}, Lcom/edisonwang/android/slog/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
goto :goto_c
:cond_4b
invoke-static {p0, v2}, Lcom/edisonwang/android/slog/MessageFormatter;->isEscapedDelimeter(Ljava/lang/String;I)Z
move-result v5
if-eqz v5, :cond_82
invoke-static {p0, v2}, Lcom/edisonwang/android/slog/MessageFormatter;->isDoubleEscaped(Ljava/lang/String;I)Z
move-result v5
if-nez v5, :cond_6c
add-int/lit8 v0, v0, -0x1
add-int/lit8 v5, v2, -0x1
invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const/16 v5, 0x7b
invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
add-int/lit8 v1, v2, 0x1
:goto_69
add-int/lit8 v0, v0, 0x1
goto :goto_22
:cond_6c
add-int/lit8 v5, v2, -0x1
invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
aget-object v5, p1, v0
new-instance v6, Ljava/util/HashMap;
invoke-direct {v6}, Ljava/util/HashMap;-><init>()V
invoke-static {v3, v5, v6}, Lcom/edisonwang/android/slog/MessageFormatter;->deeplyAppendParameter(Ljava/lang/StringBuffer;Ljava/lang/Object;Ljava/util/Map;)V
add-int/lit8 v1, v2, 0x2
goto :goto_69
:cond_82
invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
aget-object v5, p1, v0
new-instance v6, Ljava/util/HashMap;
invoke-direct {v6}, Ljava/util/HashMap;-><init>()V
invoke-static {v3, v5, v6}, Lcom/edisonwang/android/slog/MessageFormatter;->deeplyAppendParameter(Ljava/lang/StringBuffer;Ljava/lang/Object;Ljava/util/Map;)V
add-int/lit8 v1, v2, 0x2
goto :goto_69
:cond_96
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v5
invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
array-length v5, p1
add-int/lit8 v5, v5, -0x1
if-ge v0, v5, :cond_b1
new-instance v5, Lcom/edisonwang/android/slog/FormattingTuple;
invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6, p1, v4}, Lcom/edisonwang/android/slog/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
goto/16 :goto_c
:cond_b1
new-instance v5, Lcom/edisonwang/android/slog/FormattingTuple;
invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6, p1, v7}, Lcom/edisonwang/android/slog/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
goto/16 :goto_c
.end method
.method private static booleanArrayAppend(Ljava/lang/StringBuffer;[Z)V
.registers 5
const/16 v2, 0x5b
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
array-length v1, p1
const/4 v0, 0x0
:goto_7
if-ge v0, v1, :cond_1a
aget-boolean v2, p1, v0
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;
add-int/lit8 v2, v1, -0x1
if-eq v0, v2, :cond_17
const-string v2, ", "
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_17
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_1a
const/16 v2, 0x5d
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
return-void
.end method
.method private static byteArrayAppend(Ljava/lang/StringBuffer;[B)V
.registers 5
const/16 v2, 0x5b
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
array-length v1, p1
const/4 v0, 0x0
:goto_7
if-ge v0, v1, :cond_1a
aget-byte v2, p1, v0
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
add-int/lit8 v2, v1, -0x1
if-eq v0, v2, :cond_17
const-string v2, ", "
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_17
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_1a
const/16 v2, 0x5d
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
return-void
.end method
.method private static charArrayAppend(Ljava/lang/StringBuffer;[C)V
.registers 5
const/16 v2, 0x5b
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
array-length v1, p1
const/4 v0, 0x0
:goto_7
if-ge v0, v1, :cond_1a
aget-char v2, p1, v0
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
add-int/lit8 v2, v1, -0x1
if-eq v0, v2, :cond_17
const-string v2, ", "
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_17
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_1a
const/16 v2, 0x5d
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
return-void
.end method
.method private static deeplyAppendParameter(Ljava/lang/StringBuffer;Ljava/lang/Object;Ljava/util/Map;)V
.registers 4
if-nez p1, :cond_8
const-string v0, "null"
invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:goto_7
return-void
:cond_8
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z
move-result v0
if-nez v0, :cond_16
invoke-static {p0, p1}, Lcom/edisonwang/android/slog/MessageFormatter;->safeObjectAppend(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
goto :goto_7
:cond_16
instance-of v0, p1, [Z
if-eqz v0, :cond_22
check-cast p1, [Z
check-cast p1, [Z
invoke-static {p0, p1}, Lcom/edisonwang/android/slog/MessageFormatter;->booleanArrayAppend(Ljava/lang/StringBuffer;[Z)V
goto :goto_7
:cond_22
instance-of v0, p1, [B
if-eqz v0, :cond_2e
check-cast p1, [B
check-cast p1, [B
invoke-static {p0, p1}, Lcom/edisonwang/android/slog/MessageFormatter;->byteArrayAppend(Ljava/lang/StringBuffer;[B)V
goto :goto_7
:cond_2e
instance-of v0, p1, [C
if-eqz v0, :cond_3a
check-cast p1, [C
check-cast p1, [C
invoke-static {p0, p1}, Lcom/edisonwang/android/slog/MessageFormatter;->charArrayAppend(Ljava/lang/StringBuffer;[C)V
goto :goto_7
:cond_3a
instance-of v0, p1, [S
if-eqz v0, :cond_46
check-cast p1, [S
check-cast p1, [S
invoke-static {p0, p1}, Lcom/edisonwang/android/slog/MessageFormatter;->shortArrayAppend(Ljava/lang/StringBuffer;[S)V
goto :goto_7
:cond_46
instance-of v0, p1, [I
if-eqz v0, :cond_52
check-cast p1, [I
check-cast p1, [I
invoke-static {p0, p1}, Lcom/edisonwang/android/slog/MessageFormatter;->intArrayAppend(Ljava/lang/StringBuffer;[I)V
goto :goto_7
:cond_52
instance-of v0, p1, [J
if-eqz v0, :cond_5e
check-cast p1, [J
check-cast p1, [J
invoke-static {p0, p1}, Lcom/edisonwang/android/slog/MessageFormatter;->longArrayAppend(Ljava/lang/StringBuffer;[J)V
goto :goto_7
:cond_5e
instance-of v0, p1, [F
if-eqz v0, :cond_6a
check-cast p1, [F
check-cast p1, [F
invoke-static {p0, p1}, Lcom/edisonwang/android/slog/MessageFormatter;->floatArrayAppend(Ljava/lang/StringBuffer;[F)V
goto :goto_7
:cond_6a
instance-of v0, p1, [D
if-eqz v0, :cond_76
check-cast p1, [D
check-cast p1, [D
invoke-static {p0, p1}, Lcom/edisonwang/android/slog/MessageFormatter;->doubleArrayAppend(Ljava/lang/StringBuffer;[D)V
goto :goto_7
:cond_76
check-cast p1, [Ljava/lang/Object;
check-cast p1, [Ljava/lang/Object;
invoke-static {p0, p1, p2}, Lcom/edisonwang/android/slog/MessageFormatter;->objectArrayAppend(Ljava/lang/StringBuffer;[Ljava/lang/Object;Ljava/util/Map;)V
goto :goto_7
.end method
.method private static doubleArrayAppend(Ljava/lang/StringBuffer;[D)V
.registers 6
const/16 v2, 0x5b
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
array-length v1, p1
const/4 v0, 0x0
:goto_7
if-ge v0, v1, :cond_1a
aget-wide v2, p1, v0
invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;
add-int/lit8 v2, v1, -0x1
if-eq v0, v2, :cond_17
const-string v2, ", "
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_17
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_1a
const/16 v2, 0x5d
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
return-void
.end method
.method private static floatArrayAppend(Ljava/lang/StringBuffer;[F)V
.registers 5
const/16 v2, 0x5b
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
array-length v1, p1
const/4 v0, 0x0
:goto_7
if-ge v0, v1, :cond_1a
aget v2, p1, v0
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;
add-int/lit8 v2, v1, -0x1
if-eq v0, v2, :cond_17
const-string v2, ", "
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_17
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_1a
const/16 v2, 0x5d
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
return-void
.end method
.method public static format(Ljava/lang/String;Ljava/lang/Object;)Lcom/edisonwang/android/slog/FormattingTuple;
.registers 4
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
aput-object p1, v0, v1
invoke-static {p0, v0}, Lcom/edisonwang/android/slog/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lcom/edisonwang/android/slog/FormattingTuple;
move-result-object v0
return-object v0
.end method
.method public static format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/edisonwang/android/slog/FormattingTuple;
.registers 5
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
aput-object p1, v0, v1
const/4 v1, 0x1
aput-object p2, v0, v1
invoke-static {p0, v0}, Lcom/edisonwang/android/slog/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lcom/edisonwang/android/slog/FormattingTuple;
move-result-object v0
return-object v0
.end method
.method public static format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/edisonwang/android/slog/FormattingTuple;
.registers 6
const/4 v0, 0x3
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
aput-object p1, v0, v1
const/4 v1, 0x1
aput-object p2, v0, v1
const/4 v1, 0x2
aput-object p3, v0, v1
invoke-static {p0, v0}, Lcom/edisonwang/android/slog/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lcom/edisonwang/android/slog/FormattingTuple;
move-result-object v0
return-object v0
.end method
.method public static format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/edisonwang/android/slog/FormattingTuple;
.registers 3
invoke-static {p0, p1}, Lcom/edisonwang/android/slog/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lcom/edisonwang/android/slog/FormattingTuple;
move-result-object v0
return-object v0
.end method
.method private static getThrowableCandidate([Ljava/lang/Object;)Ljava/lang/Throwable;
.registers 4
const/4 v1, 0x0
if-eqz p0, :cond_6
array-length v2, p0
if-nez v2, :cond_8
:cond_6
move-object v0, v1
:goto_7
return-object v0
:cond_8
array-length v2, p0
add-int/lit8 v2, v2, -0x1
aget-object v0, p0, v2
instance-of v2, v0, Ljava/lang/Throwable;
if-eqz v2, :cond_14
check-cast v0, Ljava/lang/Throwable;
goto :goto_7
:cond_14
move-object v0, v1
goto :goto_7
.end method
.method private static intArrayAppend(Ljava/lang/StringBuffer;[I)V
.registers 5
const/16 v2, 0x5b
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
array-length v1, p1
const/4 v0, 0x0
:goto_7
if-ge v0, v1, :cond_1a
aget v2, p1, v0
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
add-int/lit8 v2, v1, -0x1
if-eq v0, v2, :cond_17
const-string v2, ", "
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_17
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_1a
const/16 v2, 0x5d
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
return-void
.end method
.method private static isDoubleEscaped(Ljava/lang/String;I)Z
.registers 4
const/4 v0, 0x2
if-lt p1, v0, :cond_f
add-int/lit8 v0, p1, -0x2
invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v1, 0x5c
if-ne v0, v1, :cond_f
const/4 v0, 0x1
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method private static isEscapedDelimeter(Ljava/lang/String;I)Z
.registers 5
const/4 v1, 0x0
if-nez p1, :cond_4
:cond_3
:goto_3
return v1
:cond_4
add-int/lit8 v2, p1, -0x1
invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v2, 0x5c
if-ne v0, v2, :cond_3
const/4 v1, 0x1
goto :goto_3
.end method
.method private static longArrayAppend(Ljava/lang/StringBuffer;[J)V
.registers 6
const/16 v2, 0x5b
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
array-length v1, p1
const/4 v0, 0x0
:goto_7
if-ge v0, v1, :cond_1a
aget-wide v2, p1, v0
invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;
add-int/lit8 v2, v1, -0x1
if-eq v0, v2, :cond_17
const-string v2, ", "
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_17
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_1a
const/16 v2, 0x5d
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
return-void
.end method
.method private static objectArrayAppend(Ljava/lang/StringBuffer;[Ljava/lang/Object;Ljava/util/Map;)V
.registers 6
const/16 v2, 0x5b
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_2d
const/4 v2, 0x0
invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
array-length v1, p1
const/4 v0, 0x0
:goto_11
if-ge v0, v1, :cond_24
aget-object v2, p1, v0
invoke-static {p0, v2, p2}, Lcom/edisonwang/android/slog/MessageFormatter;->deeplyAppendParameter(Ljava/lang/StringBuffer;Ljava/lang/Object;Ljava/util/Map;)V
add-int/lit8 v2, v1, -0x1
if-eq v0, v2, :cond_21
const-string v2, ", "
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_21
add-int/lit8 v0, v0, 0x1
goto :goto_11
:cond_24
invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:goto_27
const/16 v2, 0x5d
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
return-void
:cond_2d
const-string v2, "..."
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_27
.end method
.method private static safeObjectAppend(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
.registers 7
:try_start_0
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:goto_7
:try_end_7
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8
return-void
:catch_8
move-exception v1
sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "SLF4J: Failed toString() invocation on an object of type ["
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "]"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
const-string v2, "[FAILED toString()]"
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_7
.end method
.method private static shortArrayAppend(Ljava/lang/StringBuffer;[S)V
.registers 5
const/16 v2, 0x5b
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
array-length v1, p1
const/4 v0, 0x0
:goto_7
if-ge v0, v1, :cond_1a
aget-short v2, p1, v0
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
add-int/lit8 v2, v1, -0x1
if-eq v0, v2, :cond_17
const-string v2, ", "
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_17
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_1a
const/16 v2, 0x5d
invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
return-void
.end method