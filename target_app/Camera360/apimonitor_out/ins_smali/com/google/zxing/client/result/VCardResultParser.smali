.class public final Lcom/google/zxing/client/result/VCardResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "VCardResultParser.java"
.field private static final BEGIN_VCARD:Ljava/util/regex/Pattern;
.field private static final COMMA:Ljava/util/regex/Pattern;
.field private static final CR_LF_SPACE_TAB:Ljava/util/regex/Pattern;
.field private static final EQUALS:Ljava/util/regex/Pattern;
.field private static final NEWLINE_ESCAPE:Ljava/util/regex/Pattern;
.field private static final SEMICOLON:Ljava/util/regex/Pattern;
.field private static final SEMICOLON_OR_COMMA:Ljava/util/regex/Pattern;
.field private static final UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;
.field private static final VCARD_ESCAPES:Ljava/util/regex/Pattern;
.field private static final VCARD_LIKE_DATE:Ljava/util/regex/Pattern;
.method static constructor <clinit>()V
.registers 2
const-string/jumbo v0, "BEGIN:VCARD"
const/4 v1, 0x2
invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->BEGIN_VCARD:Ljava/util/regex/Pattern;
const-string/jumbo v0, "\\d{4}-?\\d{2}-?\\d{2}"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_LIKE_DATE:Ljava/util/regex/Pattern;
const-string/jumbo v0, "\r\n[ \t]"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->CR_LF_SPACE_TAB:Ljava/util/regex/Pattern;
const-string/jumbo v0, "\\\\[nN]"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->NEWLINE_ESCAPE:Ljava/util/regex/Pattern;
const-string/jumbo v0, "\\\\([,;\\\\])"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_ESCAPES:Ljava/util/regex/Pattern;
const-string/jumbo v0, "="
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->EQUALS:Ljava/util/regex/Pattern;
const-string/jumbo v0, ";"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON:Ljava/util/regex/Pattern;
const-string/jumbo v0, "(?<!\\\\);+"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;
const-string/jumbo v0, ","
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->COMMA:Ljava/util/regex/Pattern;
const-string/jumbo v0, "[;,]"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON_OR_COMMA:Ljava/util/regex/Pattern;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V
return-void
.end method
.method private static decodeQuotedPrintable(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
.registers 12
invoke-interface {p0}, Ljava/lang/CharSequence;->length()I
move-result v4
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(I)V
new-instance v2, Ljava/io/ByteArrayOutputStream;
invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
const/4 v3, 0x0
:goto_f
if-ge v3, v4, :cond_4e
invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C
move-result v0
sparse-switch v0, :sswitch_data_56
invoke-static {v2, p1, v7}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendFragment(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V
invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:sswitch_1e
:goto_1e
:cond_1e
add-int/lit8 v3, v3, 0x1
goto :goto_f
:sswitch_21
add-int/lit8 v9, v4, -0x2
if-ge v3, v9, :cond_1e
add-int/lit8 v9, v3, 0x1
invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C
move-result v5
const/16 v9, 0xd
if-eq v5, v9, :cond_1e
const/16 v9, 0xa
if-eq v5, v9, :cond_1e
add-int/lit8 v9, v3, 0x2
invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C
move-result v6
invoke-static {v5}, Lcom/google/zxing/client/result/VCardResultParser;->parseHexDigit(C)I
move-result v1
invoke-static {v6}, Lcom/google/zxing/client/result/VCardResultParser;->parseHexDigit(C)I
move-result v8
if-ltz v1, :cond_4b
if-ltz v8, :cond_4b
shl-int/lit8 v9, v1, 0x4
add-int/2addr v9, v8
invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V
:cond_4b
add-int/lit8 v3, v3, 0x2
goto :goto_1e
:cond_4e
invoke-static {v2, p1, v7}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendFragment(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
return-object v9
:sswitch_data_56
.sparse-switch
0xa -> :sswitch_1e
0xd -> :sswitch_1e
0x3d -> :sswitch_21
.end sparse-switch
.end method
.method private static formatNames(Ljava/lang/Iterable;)V
.registers 11
const/4 v9, 0x0
if-eqz p0, :cond_62
invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_7
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v8
if-eqz v8, :cond_62
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/util/List;
invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/lang/String;
const/4 v8, 0x5
new-array v1, v8, [Ljava/lang/String;
const/4 v7, 0x0
const/4 v0, 0x0
:goto_1e
array-length v8, v1
add-int/lit8 v8, v8, -0x1
if-ge v0, v8, :cond_36
const/16 v8, 0x3b
invoke-virtual {v5, v8, v7}, Ljava/lang/String;->indexOf(II)I
move-result v2
if-ltz v2, :cond_36
invoke-virtual {v5, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v8
aput-object v8, v1, v0
add-int/lit8 v0, v0, 0x1
add-int/lit8 v7, v2, 0x1
goto :goto_1e
:cond_36
invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v8
aput-object v8, v1, v0
new-instance v6, Ljava/lang/StringBuilder;
const/16 v8, 0x64
invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(I)V
const/4 v8, 0x3
invoke-static {v1, v8, v6}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V
const/4 v8, 0x1
invoke-static {v1, v8, v6}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V
const/4 v8, 0x2
invoke-static {v1, v8, v6}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V
invoke-static {v1, v9, v6}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V
const/4 v8, 0x4
invoke-static {v1, v8, v6}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v8
invoke-interface {v4, v9, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
goto :goto_7
:cond_62
return-void
.end method
.method private static isLikeVCardDate(Ljava/lang/CharSequence;)Z
.registers 2
if-eqz p0, :cond_e
sget-object v0, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_LIKE_DATE:Ljava/util/regex/Pattern;
invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v0
invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z
move-result v0
if-eqz v0, :cond_10
:cond_e
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method static matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
.registers 6
invoke-static {p0, p1, p2, p3}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_c
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v1
if-eqz v1, :cond_e
:cond_c
const/4 v1, 0x0
:goto_d
return-object v1
:cond_e
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/List;
goto :goto_d
.end method
.method static matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
.registers 26
const/4 v11, 0x0
const/4 v4, 0x0
invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I
move-result v12
:goto_6
if-ge v4, v12, :cond_3f
new-instance v20, Ljava/lang/StringBuilder;
invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v21, "(?:^|\n)"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
move-object/from16 v0, v20
move-object/from16 v1, p0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v20
const-string/jumbo v21, "(?:;([^:]*))?:"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
const/16 v21, 0x2
invoke-static/range {v20 .. v21}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
move-result-object v20
move-object/from16 v0, v20
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v10
if-lez v4, :cond_39
add-int/lit8 v4, v4, -0x1
:cond_39
invoke-virtual {v10, v4}, Ljava/util/regex/Matcher;->find(I)Z
move-result v20
if-nez v20, :cond_40
:cond_3f
return-object v11
:cond_40
const/16 v20, 0x0
move/from16 v0, v20
invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->end(I)I
move-result v4
const/16 v20, 0x1
move/from16 v0, v20
invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v14
const/4 v13, 0x0
const/16 v17, 0x0
const/16 v18, 0x0
if-eqz v14, :cond_bf
sget-object v20, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON:Ljava/util/regex/Pattern;
move-object/from16 v0, v20
invoke-virtual {v0, v14}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;
move-result-object v2
array-length v7, v2
const/4 v5, 0x0
:goto_61
if-ge v5, v7, :cond_bf
aget-object v15, v2, v5
if-nez v13, :cond_70
new-instance v13, Ljava/util/ArrayList;
const/16 v20, 0x1
move/from16 v0, v20
invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V
:cond_70
invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
sget-object v20, Lcom/google/zxing/client/result/VCardResultParser;->EQUALS:Ljava/util/regex/Pattern;
const/16 v21, 0x2
move-object/from16 v0, v20
move/from16 v1, v21
invoke-virtual {v0, v15, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;
move-result-object v16
move-object/from16 v0, v16
array-length v0, v0
move/from16 v20, v0
const/16 v21, 0x1
move/from16 v0, v20
move/from16 v1, v21
if-le v0, v1, :cond_ae
const/16 v20, 0x0
aget-object v6, v16, v20
const/16 v20, 0x1
aget-object v19, v16, v20
const-string/jumbo v20, "ENCODING"
move-object/from16 v0, v20
invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v20
if-eqz v20, :cond_b1
const-string/jumbo v20, "QUOTED-PRINTABLE"
move-object/from16 v0, v20
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v20
if-eqz v20, :cond_b1
const/16 v17, 0x1
:cond_ae
:goto_ae
add-int/lit8 v5, v5, 0x1
goto :goto_61
:cond_b1
const-string/jumbo v20, "CHARSET"
move-object/from16 v0, v20
invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v20
if-eqz v20, :cond_ae
move-object/from16 v18, v19
goto :goto_ae
:cond_bf
move v9, v4
:goto_c0
const/16 v20, 0xa
move-object/from16 v0, p1
move/from16 v1, v20
invoke-virtual {v0, v1, v4}, Ljava/lang/String;->indexOf(II)I
move-result v4
if-ltz v4, :cond_132
invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I
move-result v20
add-int/lit8 v20, v20, -0x1
move/from16 v0, v20
if-ge v4, v0, :cond_fd
add-int/lit8 v20, v4, 0x1
move-object/from16 v0, p1
move/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v20
const/16 v21, 0x20
move/from16 v0, v20
move/from16 v1, v21
if-eq v0, v1, :cond_fa
add-int/lit8 v20, v4, 0x1
move-object/from16 v0, p1
move/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v20
const/16 v21, 0x9
move/from16 v0, v20
move/from16 v1, v21
if-ne v0, v1, :cond_fd
:cond_fa
add-int/lit8 v4, v4, 0x2
goto :goto_c0
:cond_fd
if-eqz v17, :cond_132
const/16 v20, 0x1
move/from16 v0, v20
if-lt v4, v0, :cond_117
add-int/lit8 v20, v4, -0x1
move-object/from16 v0, p1
move/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v20
const/16 v21, 0x3d
move/from16 v0, v20
move/from16 v1, v21
if-eq v0, v1, :cond_12f
:cond_117
const/16 v20, 0x2
move/from16 v0, v20
if-lt v4, v0, :cond_132
add-int/lit8 v20, v4, -0x2
move-object/from16 v0, p1
move/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v20
const/16 v21, 0x3d
move/from16 v0, v20
move/from16 v1, v21
if-ne v0, v1, :cond_132
:cond_12f
add-int/lit8 v4, v4, 0x1
goto :goto_c0
:cond_132
if-gez v4, :cond_137
move v4, v12
goto/16 :goto_6
:cond_137
if-le v4, v9, :cond_1ea
if-nez v11, :cond_144
new-instance v11, Ljava/util/ArrayList;
const/16 v20, 0x1
move/from16 v0, v20
invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V
:cond_144
const/16 v20, 0x1
move/from16 v0, v20
if-lt v4, v0, :cond_15e
add-int/lit8 v20, v4, -0x1
move-object/from16 v0, p1
move/from16 v1, v20
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v20
const/16 v21, 0xd
move/from16 v0, v20
move/from16 v1, v21
if-ne v0, v1, :cond_15e
add-int/lit8 v4, v4, -0x1
:cond_15e
move-object/from16 v0, p1
invoke-virtual {v0, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
if-eqz p2, :cond_16a
invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v3
:cond_16a
if-eqz v17, :cond_19c
move-object/from16 v0, v18
invoke-static {v3, v0}, Lcom/google/zxing/client/result/VCardResultParser;->decodeQuotedPrintable(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
if-eqz p3, :cond_187
sget-object v20, Lcom/google/zxing/client/result/VCardResultParser;->UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;
move-object/from16 v0, v20
invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v20
const-string/jumbo v21, "\n"
invoke-virtual/range {v20 .. v21}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v3
:cond_187
:goto_187
if-nez v13, :cond_1df
new-instance v8, Ljava/util/ArrayList;
const/16 v20, 0x1
move/from16 v0, v20
invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V
invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:goto_198
add-int/lit8 v4, v4, 0x1
goto/16 :goto_6
:cond_19c
if-eqz p3, :cond_1b1
sget-object v20, Lcom/google/zxing/client/result/VCardResultParser;->UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;
move-object/from16 v0, v20
invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v20
const-string/jumbo v21, "\n"
invoke-virtual/range {v20 .. v21}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v3
:cond_1b1
sget-object v20, Lcom/google/zxing/client/result/VCardResultParser;->CR_LF_SPACE_TAB:Ljava/util/regex/Pattern;
move-object/from16 v0, v20
invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v20
const-string/jumbo v21, ""
invoke-virtual/range {v20 .. v21}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
sget-object v20, Lcom/google/zxing/client/result/VCardResultParser;->NEWLINE_ESCAPE:Ljava/util/regex/Pattern;
move-object/from16 v0, v20
invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v20
const-string/jumbo v21, "\n"
invoke-virtual/range {v20 .. v21}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
sget-object v20, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_ESCAPES:Ljava/util/regex/Pattern;
move-object/from16 v0, v20
invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v20
const-string/jumbo v21, "$1"
invoke-virtual/range {v20 .. v21}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
goto :goto_187
:cond_1df
const/16 v20, 0x0
move/from16 v0, v20
invoke-interface {v13, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V
invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_198
:cond_1ea
add-int/lit8 v4, v4, 0x1
goto/16 :goto_6
.end method
.method private static maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V
.registers 4
aget-object v0, p0, p1
if-eqz v0, :cond_1c
aget-object v0, p0, p1
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-nez v0, :cond_1c
invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I
move-result v0
if-lez v0, :cond_17
const/16 v0, 0x20
invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_17
aget-object v0, p0, p1
invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_1c
return-void
.end method
.method private static maybeAppendFragment(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V
.registers 7
invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I
move-result v3
if-lez v3, :cond_1e
invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v2
if-nez p1, :cond_1f
new-instance v1, Ljava/lang/String;
const-string/jumbo v3, "UTF-8"
invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v3
invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
:goto_18
invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V
invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_1e
return-void
:try_start_1f
:cond_1f
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v2, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
:try_end_24
.catch Ljava/io/UnsupportedEncodingException; {:try_start_1f .. :try_end_24} :catch_25
goto :goto_18
:catch_25
move-exception v0
new-instance v1, Ljava/lang/String;
const-string/jumbo v3, "UTF-8"
invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v3
invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
goto :goto_18
.end method
.method private static toPrimaryValue(Ljava/util/List;)Ljava/lang/String;
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
.method private static toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;
.registers 6
if-eqz p0, :cond_8
invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z
move-result v4
if-eqz v4, :cond_a
:cond_8
const/4 v4, 0x0
:goto_9
return-object v4
:cond_a
new-instance v2, Ljava/util/ArrayList;
invoke-interface {p0}, Ljava/util/Collection;->size()I
move-result v4
invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V
invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_17
:goto_17
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_36
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/List;
const/4 v4, 0x0
invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
if-eqz v3, :cond_17
invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z
move-result v4
if-nez v4, :cond_17
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_17
:cond_36
invoke-interface {p0}, Ljava/util/Collection;->size()I
move-result v4
new-array v4, v4, [Ljava/lang/String;
invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v4
check-cast v4, [Ljava/lang/String;
goto :goto_9
.end method
.method private static toTypes(Ljava/util/Collection;)[Ljava/lang/String;
.registers 10
if-eqz p0, :cond_8
invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z
move-result v7
if-eqz v7, :cond_a
:cond_8
const/4 v7, 0x0
:goto_9
return-object v7
:cond_a
new-instance v5, Ljava/util/ArrayList;
invoke-interface {p0}, Ljava/util/Collection;->size()I
move-result v7
invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V
invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_17
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v7
if-eqz v7, :cond_56
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/util/List;
const/4 v6, 0x0
const/4 v1, 0x1
:goto_25
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v7
if-ge v1, v7, :cond_3a
invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
const/16 v7, 0x3d
invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-gez v0, :cond_3e
move-object v6, v4
:cond_3a
:goto_3a
invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_17
:cond_3e
const-string/jumbo v7, "TYPE"
const/4 v8, 0x0
invoke-virtual {v4, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v7
if-eqz v7, :cond_53
add-int/lit8 v7, v0, 0x1
invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v6
goto :goto_3a
:cond_53
add-int/lit8 v1, v1, 0x1
goto :goto_25
:cond_56
invoke-interface {p0}, Ljava/util/Collection;->size()I
move-result v7
new-array v7, v7, [Ljava/lang/String;
invoke-interface {v5, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v7
check-cast v7, [Ljava/lang/String;
goto :goto_9
.end method
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;
.registers 34
invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/VCardResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;
move-result-object v29
sget-object v1, Lcom/google/zxing/client/result/VCardResultParser;->BEGIN_VCARD:Ljava/util/regex/Pattern;
move-object/from16 v0, v29
invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Matcher;->find()Z
move-result v1
if-eqz v1, :cond_18
invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Matcher;->start()I
move-result v1
if-eqz v1, :cond_1a
:cond_18
const/4 v1, 0x0
:goto_19
return-object v1
:cond_1a
const-string/jumbo v1, "FN"
const/4 v2, 0x1
const/4 v4, 0x0
move-object/from16 v0, v29
invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
move-result-object v24
if-nez v24, :cond_35
const-string/jumbo v1, "N"
const/4 v2, 0x1
const/4 v4, 0x0
move-object/from16 v0, v29
invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
move-result-object v24
invoke-static/range {v24 .. v24}, Lcom/google/zxing/client/result/VCardResultParser;->formatNames(Ljava/lang/Iterable;)V
:cond_35
const-string/jumbo v1, "NICKNAME"
const/4 v2, 0x1
const/4 v4, 0x0
move-object/from16 v0, v29
invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
move-result-object v25
if-nez v25, :cond_10e
const/4 v3, 0x0
:goto_43
const-string/jumbo v1, "TEL"
const/4 v2, 0x1
const/4 v4, 0x0
move-object/from16 v0, v29
invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
move-result-object v28
const-string/jumbo v1, "EMAIL"
const/4 v2, 0x1
const/4 v4, 0x0
move-object/from16 v0, v29
invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
move-result-object v20
const-string/jumbo v1, "NOTE"
const/4 v2, 0x0
const/4 v4, 0x0
move-object/from16 v0, v29
invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
move-result-object v26
const-string/jumbo v1, "ADR"
const/4 v2, 0x1
const/4 v4, 0x1
move-object/from16 v0, v29
invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
move-result-object v18
const-string/jumbo v1, "ORG"
const/4 v2, 0x1
const/4 v4, 0x1
move-object/from16 v0, v29
invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
move-result-object v27
const-string/jumbo v1, "BDAY"
const/4 v2, 0x1
const/4 v4, 0x0
move-object/from16 v0, v29
invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
move-result-object v19
if-eqz v19, :cond_98
const/4 v1, 0x0
move-object/from16 v0, v19
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/CharSequence;
invoke-static {v1}, Lcom/google/zxing/client/result/VCardResultParser;->isLikeVCardDate(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_98
const/16 v19, 0x0
:cond_98
const-string/jumbo v1, "TITLE"
const/4 v2, 0x1
const/4 v4, 0x0
move-object/from16 v0, v29
invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
move-result-object v30
const-string/jumbo v1, "URL"
const/4 v2, 0x1
const/4 v4, 0x0
move-object/from16 v0, v29
invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
move-result-object v31
const-string/jumbo v1, "IMPP"
const/4 v2, 0x1
const/4 v4, 0x0
move-object/from16 v0, v29
invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
move-result-object v22
const-string/jumbo v1, "GEO"
const/4 v2, 0x1
const/4 v4, 0x0
move-object/from16 v0, v29
invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
move-result-object v21
if-nez v21, :cond_11f
const/16 v17, 0x0
:goto_c8
if-eqz v17, :cond_d2
move-object/from16 v0, v17
array-length v1, v0
const/4 v2, 0x2
if-eq v1, v2, :cond_d2
const/16 v17, 0x0
:cond_d2
new-instance v1, Lcom/google/zxing/client/result/AddressBookParsedResult;
invoke-static/range {v24 .. v24}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;
move-result-object v2
const/4 v4, 0x0
invoke-static/range {v28 .. v28}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;
move-result-object v5
invoke-static/range {v28 .. v28}, Lcom/google/zxing/client/result/VCardResultParser;->toTypes(Ljava/util/Collection;)[Ljava/lang/String;
move-result-object v6
invoke-static/range {v20 .. v20}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;
move-result-object v7
invoke-static/range {v20 .. v20}, Lcom/google/zxing/client/result/VCardResultParser;->toTypes(Ljava/util/Collection;)[Ljava/lang/String;
move-result-object v8
invoke-static/range {v22 .. v22}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;
move-result-object v9
invoke-static/range {v26 .. v26}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;
move-result-object v10
invoke-static/range {v18 .. v18}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;
move-result-object v11
invoke-static/range {v18 .. v18}, Lcom/google/zxing/client/result/VCardResultParser;->toTypes(Ljava/util/Collection;)[Ljava/lang/String;
move-result-object v12
invoke-static/range {v27 .. v27}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;
move-result-object v13
invoke-static/range {v19 .. v19}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;
move-result-object v14
invoke-static/range {v30 .. v30}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;
move-result-object v15
invoke-static/range {v31 .. v31}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;
move-result-object v16
invoke-direct/range {v1 .. v17}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
goto/16 :goto_19
:cond_10e
sget-object v2, Lcom/google/zxing/client/result/VCardResultParser;->COMMA:Ljava/util/regex/Pattern;
const/4 v1, 0x0
move-object/from16 v0, v25
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/CharSequence;
invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;
move-result-object v3
goto/16 :goto_43
:cond_11f
sget-object v2, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON_OR_COMMA:Ljava/util/regex/Pattern;
const/4 v1, 0x0
move-object/from16 v0, v21
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/CharSequence;
invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;
move-result-object v17
goto :goto_c8
.end method
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/VCardResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;
move-result-object v0
return-object v0
.end method