.class public final Lcom/google/zxing/client/a/af;
.super Lcom/google/zxing/client/a/u;
.source "VCardResultParser.java"
.field private static final b:Ljava/util/regex/Pattern;
.field private static final c:Ljava/util/regex/Pattern;
.field private static final d:Ljava/util/regex/Pattern;
.field private static final e:Ljava/util/regex/Pattern;
.field private static final f:Ljava/util/regex/Pattern;
.field private static final g:Ljava/util/regex/Pattern;
.field private static final h:Ljava/util/regex/Pattern;
.field private static final i:Ljava/util/regex/Pattern;
.method static constructor <clinit>()V
.registers 2
const-string v0, "BEGIN:VCARD"
const/4 v1, 0x2
invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/google/zxing/client/a/af;->b:Ljava/util/regex/Pattern;
const-string v0, "\\d{4}-?\\d{2}-?\\d{2}"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/google/zxing/client/a/af;->c:Ljava/util/regex/Pattern;
const-string v0, "\r\n[ \t]"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/google/zxing/client/a/af;->d:Ljava/util/regex/Pattern;
const-string v0, "\\\\[nN]"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/google/zxing/client/a/af;->e:Ljava/util/regex/Pattern;
const-string v0, "\\\\([,;\\\\])"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/google/zxing/client/a/af;->f:Ljava/util/regex/Pattern;
const-string v0, "="
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/google/zxing/client/a/af;->g:Ljava/util/regex/Pattern;
const-string v0, ";"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/google/zxing/client/a/af;->h:Ljava/util/regex/Pattern;
const-string v0, "(?<!\\\\);+"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/google/zxing/client/a/af;->i:Ljava/util/regex/Pattern;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/zxing/client/a/u;-><init>()V
return-void
.end method
.method private static a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
.registers 8
invoke-interface {p0}, Ljava/lang/CharSequence;->length()I
move-result v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V
new-instance v3, Ljava/io/ByteArrayOutputStream;
invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
const/4 v0, 0x0
:goto_f
if-ge v0, v1, :cond_4e
invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C
move-result v4
sparse-switch v4, :sswitch_data_56
invoke-static {v3, p1, v2}, Lcom/google/zxing/client/a/af;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:sswitch_1e
:goto_1e
:cond_1e
add-int/lit8 v0, v0, 0x1
goto :goto_f
:sswitch_21
add-int/lit8 v4, v1, -0x2
if-ge v0, v4, :cond_1e
add-int/lit8 v4, v0, 0x1
invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C
move-result v4
const/16 v5, 0xd
if-eq v4, v5, :cond_1e
const/16 v5, 0xa
if-eq v4, v5, :cond_1e
add-int/lit8 v5, v0, 0x2
invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C
move-result v5
invoke-static {v4}, Lcom/google/zxing/client/a/af;->a(C)I
move-result v4
invoke-static {v5}, Lcom/google/zxing/client/a/af;->a(C)I
move-result v5
if-ltz v4, :cond_4b
if-ltz v5, :cond_4b
shl-int/lit8 v4, v4, 0x4
add-int/2addr v4, v5
invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V
:cond_4b
add-int/lit8 v0, v0, 0x2
goto :goto_1e
:cond_4e
invoke-static {v3, p1, v2}, Lcom/google/zxing/client/a/af;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:sswitch_data_56
.sparse-switch
0xa -> :sswitch_1e
0xd -> :sswitch_1e
0x3d -> :sswitch_21
.end sparse-switch
.end method
.method private static a(Ljava/util/List;)Ljava/lang/String;
.registers 2
if-eqz p0, :cond_8
invoke-interface {p0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_a
:cond_8
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
const/4 v0, 0x0
invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
goto :goto_9
.end method
.method static a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
.registers 16
const/4 v1, 0x0
const/4 v0, 0x0
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v6
move-object v7, v1
:goto_7
if-ge v0, v6, :cond_166
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "(?:^|\n)"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "(?:;([^:]*))?:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x2
invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v1
if-lez v0, :cond_2b
add-int/lit8 v0, v0, -0x1
:cond_2b
invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->find(I)Z
move-result v0
if-eqz v0, :cond_166
const/4 v0, 0x0
invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->end(I)I
move-result v5
const/4 v0, 0x1
invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v2
const/4 v0, 0x0
const/4 v3, 0x0
const/4 v1, 0x0
if-eqz v2, :cond_16a
sget-object v4, Lcom/google/zxing/client/a/af;->h:Ljava/util/regex/Pattern;
invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;
move-result-object v8
array-length v9, v8
const/4 v2, 0x0
move v4, v2
:goto_49
if-ge v4, v9, :cond_8a
aget-object v2, v8, v4
if-nez v0, :cond_55
new-instance v0, Ljava/util/ArrayList;
const/4 v10, 0x1
invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(I)V
:cond_55
invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
sget-object v10, Lcom/google/zxing/client/a/af;->g:Ljava/util/regex/Pattern;
const/4 v11, 0x2
invoke-virtual {v10, v2, v11}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;
move-result-object v2
array-length v10, v2
const/4 v11, 0x1
if-le v10, v11, :cond_167
const/4 v10, 0x0
aget-object v10, v2, v10
const/4 v11, 0x1
aget-object v2, v2, v11
const-string v11, "ENCODING"
invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v11
if-eqz v11, :cond_7f
const-string v11, "QUOTED-PRINTABLE"
invoke-virtual {v11, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v11
if-eqz v11, :cond_7f
const/4 v2, 0x1
:goto_7a
add-int/lit8 v3, v4, 0x1
move v4, v3
move v3, v2
goto :goto_49
:cond_7f
const-string v11, "CHARSET"
invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v10
if-eqz v10, :cond_167
move-object v1, v2
move v2, v3
goto :goto_7a
:cond_8a
move-object v2, v1
move-object v4, v0
:goto_8c
move v0, v5
:goto_8d
const/16 v1, 0xa
invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I
move-result v0
if-ltz v0, :cond_d2
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
add-int/lit8 v1, v1, -0x1
if-ge v0, v1, :cond_b4
add-int/lit8 v1, v0, 0x1
invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C
move-result v1
const/16 v8, 0x20
if-eq v1, v8, :cond_b1
add-int/lit8 v1, v0, 0x1
invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C
move-result v1
const/16 v8, 0x9
if-ne v1, v8, :cond_b4
:cond_b1
add-int/lit8 v0, v0, 0x2
goto :goto_8d
:cond_b4
if-eqz v3, :cond_d2
if-lez v0, :cond_c2
add-int/lit8 v1, v0, -0x1
invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C
move-result v1
const/16 v8, 0x3d
if-eq v1, v8, :cond_cf
:cond_c2
const/4 v1, 0x2
if-lt v0, v1, :cond_d2
add-int/lit8 v1, v0, -0x2
invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C
move-result v1
const/16 v8, 0x3d
if-ne v1, v8, :cond_d2
:cond_cf
add-int/lit8 v0, v0, 0x1
goto :goto_8d
:cond_d2
if-gez v0, :cond_d7
move v0, v6
goto/16 :goto_7
:cond_d7
if-le v0, v5, :cond_162
if-nez v7, :cond_e1
new-instance v7, Ljava/util/ArrayList;
const/4 v1, 0x1
invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V
:cond_e1
if-lez v0, :cond_ef
add-int/lit8 v1, v0, -0x1
invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C
move-result v1
const/16 v8, 0xd
if-ne v1, v8, :cond_ef
add-int/lit8 v0, v0, -0x1
:cond_ef
invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
if-eqz p2, :cond_f9
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
:cond_f9
if-eqz v3, :cond_123
invoke-static {v1, v2}, Lcom/google/zxing/client/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz p3, :cond_111
sget-object v2, Lcom/google/zxing/client/a/af;->i:Ljava/util/regex/Pattern;
invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v1
const-string v2, "\n"
invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
:goto_111
:cond_111
if-nez v4, :cond_15a
new-instance v2, Ljava/util/ArrayList;
const/4 v3, 0x1
invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V
invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:goto_11f
add-int/lit8 v0, v0, 0x1
goto/16 :goto_7
:cond_123
if-eqz p3, :cond_135
sget-object v2, Lcom/google/zxing/client/a/af;->i:Ljava/util/regex/Pattern;
invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v1
const-string v2, "\n"
invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
:cond_135
sget-object v2, Lcom/google/zxing/client/a/af;->d:Ljava/util/regex/Pattern;
invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v1
const-string v2, ""
invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
sget-object v2, Lcom/google/zxing/client/a/af;->e:Ljava/util/regex/Pattern;
invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v1
const-string v2, "\n"
invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
sget-object v2, Lcom/google/zxing/client/a/af;->f:Ljava/util/regex/Pattern;
invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v1
const-string v2, "$1"
invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
goto :goto_111
:cond_15a
const/4 v2, 0x0
invoke-interface {v4, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V
invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_11f
:cond_162
add-int/lit8 v0, v0, 0x1
goto/16 :goto_7
:cond_166
return-object v7
:cond_167
move v2, v3
goto/16 :goto_7a
:cond_16a
move-object v2, v1
move-object v4, v0
goto/16 :goto_8c
.end method
.method private static a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V
.registers 5
invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I
move-result v0
if-lez v0, :cond_17
invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v1
if-nez p1, :cond_18
new-instance v0, Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
:goto_11
invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V
invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_17
return-void
:cond_18
:try_start_18
new-instance v0, Ljava/lang/String;
invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
:try_end_1d
.catch Ljava/io/UnsupportedEncodingException; {:try_start_18 .. :try_end_1d} :catch_1e
goto :goto_11
:catch_1e
move-exception v0
new-instance v0, Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
goto :goto_11
.end method
.method private static a([Ljava/lang/String;ILjava/lang/StringBuilder;)V
.registers 4
aget-object v0, p0, p1
if-eqz v0, :cond_e
const/16 v0, 0x20
invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
aget-object v0, p0, p1
invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_e
return-void
.end method
.method private static a(Ljava/util/Collection;)[Ljava/lang/String;
.registers 5
if-eqz p0, :cond_8
invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z
move-result v0
if-eqz v0, :cond_a
:cond_8
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
new-instance v1, Ljava/util/ArrayList;
invoke-interface {p0}, Ljava/util/Collection;->size()I
move-result v0
invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V
invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_17
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2c
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
const/4 v3, 0x0
invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_17
:cond_2c
invoke-interface {p0}, Ljava/util/Collection;->size()I
move-result v0
new-array v0, v0, [Ljava/lang/String;
invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
goto :goto_9
.end method
.method static b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
.registers 6
invoke-static {p0, p1, p2, p3}, Lcom/google/zxing/client/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_c
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v1
if-eqz v1, :cond_e
:cond_c
const/4 v0, 0x0
:goto_d
return-object v0
:cond_e
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
goto :goto_d
.end method
.method private static b(Ljava/util/Collection;)[Ljava/lang/String;
.registers 10
const/4 v3, 0x0
if-eqz p0, :cond_9
invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z
move-result v0
if-eqz v0, :cond_b
:cond_9
move-object v0, v3
:goto_a
return-object v0
:cond_b
new-instance v4, Ljava/util/ArrayList;
invoke-interface {p0}, Ljava/util/Collection;->size()I
move-result v0
invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V
invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_18
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_56
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
const/4 v1, 0x1
move v2, v1
:goto_26
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
if-ge v2, v1, :cond_63
invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
const/16 v6, 0x3d
invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I
move-result v6
if-gez v6, :cond_3e
:goto_3a
invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_18
:cond_3e
const-string v7, "TYPE"
const/4 v8, 0x0
invoke-virtual {v1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v7
if-eqz v7, :cond_52
add-int/lit8 v0, v6, 0x1
invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
goto :goto_3a
:cond_52
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_26
:cond_56
invoke-interface {p0}, Ljava/util/Collection;->size()I
move-result v0
new-array v0, v0, [Ljava/lang/String;
invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
goto :goto_a
:cond_63
move-object v1, v3
goto :goto_3a
.end method
.method public final synthetic a(Lcom/google/zxing/m;)Lcom/google/zxing/client/a/q;
.registers 17
invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/a/af;->b(Lcom/google/zxing/m;)Ljava/lang/String;
move-result-object v5
sget-object v0, Lcom/google/zxing/client/a/af;->b:Ljava/util/regex/Pattern;
invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v0
invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
move-result v1
if-eqz v1, :cond_16
invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I
move-result v0
if-eqz v0, :cond_18
:cond_16
const/4 v0, 0x0
:goto_17
return-object v0
:cond_18
const-string v0, "FN"
const/4 v1, 0x1
const/4 v2, 0x0
invoke-static {v0, v5, v1, v2}, Lcom/google/zxing/client/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
move-result-object v0
if-nez v0, :cond_131
const-string v0, "N"
const/4 v1, 0x1
const/4 v2, 0x0
invoke-static {v0, v5, v1, v2}, Lcom/google/zxing/client/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
move-result-object v2
if-eqz v2, :cond_8c
invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_30
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_8c
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
const/4 v3, 0x5
new-array v7, v3, [Ljava/lang/String;
const/4 v4, 0x0
const/4 v3, 0x0
:goto_48
const/4 v8, 0x4
if-ge v3, v8, :cond_5e
const/16 v8, 0x3b
invoke-virtual {v1, v8, v4}, Ljava/lang/String;->indexOf(II)I
move-result v8
if-lez v8, :cond_5e
invoke-virtual {v1, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v4
aput-object v4, v7, v3
add-int/lit8 v3, v3, 0x1
add-int/lit8 v4, v8, 0x1
goto :goto_48
:cond_5e
invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
aput-object v1, v7, v3
new-instance v1, Ljava/lang/StringBuilder;
const/16 v3, 0x64
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V
const/4 v3, 0x3
invoke-static {v7, v3, v1}, Lcom/google/zxing/client/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V
const/4 v3, 0x1
invoke-static {v7, v3, v1}, Lcom/google/zxing/client/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V
const/4 v3, 0x2
invoke-static {v7, v3, v1}, Lcom/google/zxing/client/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V
const/4 v3, 0x0
invoke-static {v7, v3, v1}, Lcom/google/zxing/client/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V
const/4 v3, 0x4
invoke-static {v7, v3, v1}, Lcom/google/zxing/client/a/af;->a([Ljava/lang/String;ILjava/lang/StringBuilder;)V
const/4 v3, 0x0
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
goto :goto_30
:cond_8c
move-object v1, v2
:goto_8d
const-string v0, "TEL"
const/4 v2, 0x1
const/4 v3, 0x0
invoke-static {v0, v5, v2, v3}, Lcom/google/zxing/client/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
move-result-object v4
const-string v0, "EMAIL"
const/4 v2, 0x1
const/4 v3, 0x0
invoke-static {v0, v5, v2, v3}, Lcom/google/zxing/client/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
move-result-object v6
const-string v0, "NOTE"
const/4 v2, 0x0
const/4 v3, 0x0
invoke-static {v0, v5, v2, v3}, Lcom/google/zxing/client/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
move-result-object v8
const-string v0, "ADR"
const/4 v2, 0x1
const/4 v3, 0x1
invoke-static {v0, v5, v2, v3}, Lcom/google/zxing/client/a/af;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
move-result-object v10
const-string v0, "ORG"
const/4 v2, 0x1
const/4 v3, 0x1
invoke-static {v0, v5, v2, v3}, Lcom/google/zxing/client/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
move-result-object v11
const-string v0, "BDAY"
const/4 v2, 0x1
const/4 v3, 0x0
invoke-static {v0, v5, v2, v3}, Lcom/google/zxing/client/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
move-result-object v2
if-eqz v2, :cond_12f
const/4 v0, 0x0
invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/CharSequence;
if-eqz v0, :cond_d4
sget-object v3, Lcom/google/zxing/client/a/af;->c:Ljava/util/regex/Pattern;
invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v0
invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z
move-result v0
if-eqz v0, :cond_12d
:cond_d4
const/4 v0, 0x1
:goto_d5
if-nez v0, :cond_12f
const/4 v0, 0x0
move-object v12, v0
:goto_d9
const-string v0, "TITLE"
const/4 v2, 0x1
const/4 v3, 0x0
invoke-static {v0, v5, v2, v3}, Lcom/google/zxing/client/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
move-result-object v13
const-string v0, "URL"
const/4 v2, 0x1
const/4 v3, 0x0
invoke-static {v0, v5, v2, v3}, Lcom/google/zxing/client/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
move-result-object v14
const-string v0, "IMPP"
const/4 v2, 0x1
const/4 v3, 0x0
invoke-static {v0, v5, v2, v3}, Lcom/google/zxing/client/a/af;->b(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
move-result-object v7
new-instance v0, Lcom/google/zxing/client/a/d;
invoke-static {v1}, Lcom/google/zxing/client/a/af;->a(Ljava/util/Collection;)[Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-static {v4}, Lcom/google/zxing/client/a/af;->a(Ljava/util/Collection;)[Ljava/lang/String;
move-result-object v3
invoke-static {v4}, Lcom/google/zxing/client/a/af;->b(Ljava/util/Collection;)[Ljava/lang/String;
move-result-object v4
invoke-static {v6}, Lcom/google/zxing/client/a/af;->a(Ljava/util/Collection;)[Ljava/lang/String;
move-result-object v5
invoke-static {v6}, Lcom/google/zxing/client/a/af;->b(Ljava/util/Collection;)[Ljava/lang/String;
move-result-object v6
invoke-static {v7}, Lcom/google/zxing/client/a/af;->a(Ljava/util/List;)Ljava/lang/String;
move-result-object v7
invoke-static {v8}, Lcom/google/zxing/client/a/af;->a(Ljava/util/List;)Ljava/lang/String;
move-result-object v8
invoke-static {v10}, Lcom/google/zxing/client/a/af;->a(Ljava/util/Collection;)[Ljava/lang/String;
move-result-object v9
invoke-static {v10}, Lcom/google/zxing/client/a/af;->b(Ljava/util/Collection;)[Ljava/lang/String;
move-result-object v10
invoke-static {v11}, Lcom/google/zxing/client/a/af;->a(Ljava/util/List;)Ljava/lang/String;
move-result-object v11
invoke-static {v12}, Lcom/google/zxing/client/a/af;->a(Ljava/util/List;)Ljava/lang/String;
move-result-object v12
invoke-static {v13}, Lcom/google/zxing/client/a/af;->a(Ljava/util/List;)Ljava/lang/String;
move-result-object v13
invoke-static {v14}, Lcom/google/zxing/client/a/af;->a(Ljava/util/List;)Ljava/lang/String;
move-result-object v14
invoke-direct/range {v0 .. v14}, Lcom/google/zxing/client/a/d;-><init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_17
:cond_12d
const/4 v0, 0x0
goto :goto_d5
:cond_12f
move-object v12, v2
goto :goto_d9
:cond_131
move-object v1, v0
goto/16 :goto_8d
.end method