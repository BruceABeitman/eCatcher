.class public Ljavax/mail/internet/ParameterList;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static applehack:Z
.field private static decodeParameters:Z
.field private static decodeParametersStrict:Z
.field private static encodeParameters:Z
.field private static final hex:[C
.field private lastName:Ljava/lang/String;
.field private list:Ljava/util/Map;
.field private multisegmentNames:Ljava/util/Set;
.field private slist:Ljava/util/Map;
.method static constructor <clinit>()V
.registers 4
const/4 v0, 0x1
const/4 v1, 0x0
sput-boolean v1, Ljavax/mail/internet/ParameterList;->encodeParameters:Z
sput-boolean v1, Ljavax/mail/internet/ParameterList;->decodeParameters:Z
sput-boolean v1, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z
sput-boolean v1, Ljavax/mail/internet/ParameterList;->applehack:Z
:try_start_a
const-string v2, "mail.mime.encodeparameters"
invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_5f
const-string v3, "true"
invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_5f
move v2, v0
:goto_1b
sput-boolean v2, Ljavax/mail/internet/ParameterList;->encodeParameters:Z
const-string v2, "mail.mime.decodeparameters"
invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_61
const-string v3, "true"
invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_61
move v2, v0
:goto_2e
sput-boolean v2, Ljavax/mail/internet/ParameterList;->decodeParameters:Z
const-string v2, "mail.mime.decodeparameters.strict"
invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_63
const-string v3, "true"
invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_63
move v2, v0
:goto_41
sput-boolean v2, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z
const-string v2, "mail.mime.applefilenames"
invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_65
const-string v3, "true"
invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_65
:goto_53
sput-boolean v0, Ljavax/mail/internet/ParameterList;->applehack:Z
:try_end_55
.catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_55} :catch_67
:goto_55
const/16 v0, 0x10
new-array v0, v0, [C
fill-array-data v0, :array_6a
sput-object v0, Ljavax/mail/internet/ParameterList;->hex:[C
return-void
:cond_5f
move v2, v1
goto :goto_1b
:cond_61
move v2, v1
goto :goto_2e
:cond_63
move v2, v1
goto :goto_41
:cond_65
move v0, v1
goto :goto_53
:catch_67
move-exception v0
goto :goto_55
nop
:array_6a
.array-data 0x2
0x30t 0x0t
0x31t 0x0t
0x32t 0x0t
0x33t 0x0t
0x34t 0x0t
0x35t 0x0t
0x36t 0x0t
0x37t 0x0t
0x38t 0x0t
0x39t 0x0t
0x41t 0x0t
0x42t 0x0t
0x43t 0x0t
0x44t 0x0t
0x45t 0x0t
0x46t 0x0t
.end array-data
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/LinkedHashMap;
invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V
iput-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;
const/4 v0, 0x0
iput-object v0, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;
sget-boolean v0, Ljavax/mail/internet/ParameterList;->decodeParameters:Z
if-eqz v0, :cond_1f
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;
:cond_1f
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 9
const/4 v6, -0x4
const/4 v5, -0x1
invoke-direct {p0}, Ljavax/mail/internet/ParameterList;-><init>()V
new-instance v1, Ljavax/mail/internet/HeaderTokenizer;
const-string v0, "()<>@,;:\\\"\t []/?="
invoke-direct {v1, p1, v0}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
:goto_c
invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;
move-result-object v2
invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I
move-result v0
if-ne v0, v6, :cond_1f
:cond_16
sget-boolean v0, Ljavax/mail/internet/ParameterList;->decodeParameters:Z
if-eqz v0, :cond_1e
const/4 v0, 0x0
invoke-direct {p0, v0}, Ljavax/mail/internet/ParameterList;->combineMultisegmentNames(Z)V
:cond_1e
return-void
:cond_1f
int-to-char v3, v0
const/16 v4, 0x3b
if-ne v3, v4, :cond_cb
invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;
move-result-object v0
invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I
move-result v2
if-eq v2, v6, :cond_16
invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I
move-result v2
if-eq v2, v5, :cond_53
new-instance v1, Ljavax/mail/internet/ParseException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Expected parameter name, got \""
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "\""
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V
throw v1
:cond_53
invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;
move-result-object v0
sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;
move-result-object v2
invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I
move-result v3
int-to-char v3, v3
const/16 v4, 0x3d
if-eq v3, v4, :cond_89
new-instance v0, Ljavax/mail/internet/ParseException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "Expected \'=\', got \""
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V
throw v0
:cond_89
invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;
move-result-object v2
invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I
move-result v3
if-eq v3, v5, :cond_b5
const/4 v4, -0x2
if-eq v3, v4, :cond_b5
new-instance v0, Ljavax/mail/internet/ParseException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "Expected parameter value, got \""
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V
throw v0
:cond_b5
invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;
move-result-object v2
iput-object v0, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;
sget-boolean v3, Ljavax/mail/internet/ParameterList;->decodeParameters:Z
if-eqz v3, :cond_c4
invoke-direct {p0, v0, v2}, Ljavax/mail/internet/ParameterList;->putEncodedName(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_c
:cond_c4
iget-object v3, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;
invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_c
:cond_cb
sget-boolean v3, Ljavax/mail/internet/ParameterList;->applehack:Z
if-eqz v3, :cond_117
if-ne v0, v5, :cond_117
iget-object v0, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;
if-eqz v0, :cond_117
iget-object v0, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;
const-string v3, "name"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_e9
iget-object v0, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;
const-string v3, "filename"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_117
:cond_e9
iget-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;
iget-object v3, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;
invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v0, " "
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;
iget-object v3, p0, Ljavax/mail/internet/ParameterList;->lastName:Ljava/lang/String;
invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_c
:cond_117
new-instance v0, Ljavax/mail/internet/ParseException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "Expected \';\', got \""
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method static synthetic access$0(Ljava/lang/String;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Ljavax/mail/internet/ParameterList;->quote(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private combineMultisegmentNames(Z)V
.registers 14
const/4 v3, 0x0
:try_start_1
iget-object v0, p0, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v7
:goto_7
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
:try_end_a
.catchall {:try_start_1 .. :try_end_a} :catchall_74
move-result v0
if-nez v0, :cond_39
if-nez p1, :cond_f
:cond_f
iget-object v0, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
if-lez v0, :cond_2e
iget-object v0, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_21
:goto_21
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_135
iget-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;
iget-object v1, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;
invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
:cond_2e
iget-object v0, p0, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->clear()V
iget-object v0, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
return-void
:cond_39
:try_start_39
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
new-instance v8, Ljava/lang/StringBuffer;
invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V
new-instance v9, Ljavax/mail/internet/ParameterList$MultiValue;
const/4 v1, 0x0
invoke-direct {v9, v1}, Ljavax/mail/internet/ParameterList$MultiValue;-><init>(Ljavax/mail/internet/ParameterList$MultiValue;)V
const/4 v1, 0x0
move v6, v1
move-object v5, v3
:goto_4d
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v2, "*"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
iget-object v1, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;
invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
if-nez v1, :cond_79
:goto_6c
if-nez v6, :cond_e4
iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;
invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:try_end_73
.catchall {:try_start_39 .. :try_end_73} :catchall_74
goto :goto_7
:catchall_74
move-exception v0
move-object v1, v0
if-nez p1, :cond_f1
:goto_78
throw v1
:cond_79
:try_start_79
invoke-virtual {v9, v1}, Ljavax/mail/internet/ParameterList$MultiValue;->add(Ljava/lang/Object;)Z
instance-of v2, v1, Ljavax/mail/internet/ParameterList$Value;
:try_end_7e
.catchall {:try_start_79 .. :try_end_7e} :catchall_74
if-eqz v2, :cond_e0
:try_start_80
check-cast v1, Ljavax/mail/internet/ParameterList$Value;
iget-object v2, v1, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;
:try_end_84
.catchall {:try_start_80 .. :try_end_84} :catchall_74
.catch Ljava/lang/NumberFormatException; {:try_start_80 .. :try_end_84} :catch_15f
.catch Ljava/io/UnsupportedEncodingException; {:try_start_80 .. :try_end_84} :catch_155
.catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_80 .. :try_end_84} :catch_14f
if-nez v6, :cond_a0
:try_start_86
invoke-static {v2}, Ljavax/mail/internet/ParameterList;->decodeValue(Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;
move-result-object v11
iget-object v4, v11, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;
iput-object v4, v1, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;
:try_start_8e
:try_end_8e
.catchall {:try_start_86 .. :try_end_8e} :catchall_74
.catch Ljava/lang/NumberFormatException; {:try_start_86 .. :try_end_8e} :catch_a8
.catch Ljava/io/UnsupportedEncodingException; {:try_start_86 .. :try_end_8e} :catch_159
.catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_86 .. :try_end_8e} :catch_152
iget-object v5, v11, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;
iput-object v5, v1, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;
:try_end_92
.catchall {:try_start_8e .. :try_end_92} :catchall_74
.catch Ljava/lang/NumberFormatException; {:try_start_8e .. :try_end_92} :catch_15c
.catch Ljava/io/UnsupportedEncodingException; {:try_start_8e .. :try_end_92} :catch_c0
.catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_8e .. :try_end_92} :catch_d0
move-object v2, v5
move-object v5, v4
:cond_94
:goto_94
:try_start_94
invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v1, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;
invoke-interface {v1, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:try_end_9c
.catchall {:try_start_94 .. :try_end_9c} :catchall_74
add-int/lit8 v1, v6, 0x1
move v6, v1
goto :goto_4d
:cond_a0
if-nez v5, :cond_b8
:try_start_a2
iget-object v1, p0, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;
invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
:try_end_a7
.catchall {:try_start_a2 .. :try_end_a7} :catchall_74
.catch Ljava/lang/NumberFormatException; {:try_start_a2 .. :try_end_a7} :catch_a8
.catch Ljava/io/UnsupportedEncodingException; {:try_start_a2 .. :try_end_a7} :catch_159
.catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_a2 .. :try_end_a7} :catch_152
goto :goto_6c
:catch_a8
move-exception v1
move-object v4, v5
:try_start_aa
:goto_aa
sget-boolean v5, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z
if-eqz v5, :cond_164
new-instance v0, Ljavax/mail/internet/ParseException;
invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V
throw v0
:cond_b8
:try_end_b8
.catchall {:try_start_aa .. :try_end_b8} :catchall_74
:try_start_b8
invoke-static {v2, v5}, Ljavax/mail/internet/ParameterList;->decodeBytes(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
iput-object v4, v1, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;
:try_end_be
.catchall {:try_start_b8 .. :try_end_be} :catchall_74
.catch Ljava/lang/NumberFormatException; {:try_start_b8 .. :try_end_be} :catch_a8
.catch Ljava/io/UnsupportedEncodingException; {:try_start_b8 .. :try_end_be} :catch_159
.catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_b8 .. :try_end_be} :catch_152
move-object v2, v4
goto :goto_94
:catch_c0
move-exception v1
move-object v5, v4
:try_start_c2
:goto_c2
sget-boolean v4, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z
if-eqz v4, :cond_94
new-instance v0, Ljavax/mail/internet/ParseException;
invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V
throw v0
:catch_d0
move-exception v1
move-object v5, v4
:goto_d2
sget-boolean v4, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z
if-eqz v4, :cond_94
new-instance v0, Ljavax/mail/internet/ParseException;
invoke-virtual {v1}, Ljava/lang/StringIndexOutOfBoundsException;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e0
check-cast v1, Ljava/lang/String;
move-object v2, v1
goto :goto_94
:cond_e4
invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
iput-object v1, v9, Ljavax/mail/internet/ParameterList$MultiValue;->value:Ljava/lang/String;
iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;
invoke-interface {v1, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_ef
.catchall {:try_start_c2 .. :try_end_ef} :catchall_74
goto/16 :goto_7
:cond_f1
iget-object v0, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
if-lez v0, :cond_110
iget-object v0, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_103
:goto_103
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_11c
iget-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;
iget-object v2, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;
invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
:cond_110
iget-object v0, p0, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->clear()V
iget-object v0, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
goto/16 :goto_78
:cond_11c
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
instance-of v3, v0, Ljavax/mail/internet/ParameterList$Value;
if-eqz v3, :cond_103
check-cast v0, Ljavax/mail/internet/ParameterList$Value;
iget-object v3, v0, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;
invoke-static {v3}, Ljavax/mail/internet/ParameterList;->decodeValue(Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;
move-result-object v3
iget-object v4, v3, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;
iput-object v4, v0, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;
iget-object v3, v3, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;
iput-object v3, v0, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;
goto :goto_103
:cond_135
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
instance-of v2, v0, Ljavax/mail/internet/ParameterList$Value;
if-eqz v2, :cond_21
check-cast v0, Ljavax/mail/internet/ParameterList$Value;
iget-object v2, v0, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;
invoke-static {v2}, Ljavax/mail/internet/ParameterList;->decodeValue(Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;
move-result-object v2
iget-object v3, v2, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;
iput-object v3, v0, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;
iget-object v2, v2, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;
iput-object v2, v0, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;
goto/16 :goto_21
:catch_14f
move-exception v1
move-object v2, v3
goto :goto_d2
:catch_152
move-exception v1
goto/16 :goto_d2
:catch_155
move-exception v1
move-object v2, v3
goto/16 :goto_c2
:catch_159
move-exception v1
goto/16 :goto_c2
:catch_15c
move-exception v1
goto/16 :goto_aa
:catch_15f
move-exception v1
move-object v2, v3
move-object v4, v5
goto/16 :goto_aa
:cond_164
move-object v5, v4
goto/16 :goto_94
.end method
.method private static decodeBytes(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 9
const/4 v1, 0x0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
new-array v5, v0, [B
move v0, v1
move v2, v1
:goto_9
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
if-lt v2, v3, :cond_19
new-instance v2, Ljava/lang/String;
invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v5, v1, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
return-object v2
:cond_19
invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C
move-result v3
const/16 v4, 0x25
if-ne v3, v4, :cond_3e
add-int/lit8 v3, v2, 0x1
add-int/lit8 v4, v2, 0x3
invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v3
const/16 v4, 0x10
invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
move-result v3
int-to-char v3, v3
add-int/lit8 v2, v2, 0x2
move v4, v2
:goto_33
add-int/lit8 v2, v0, 0x1
int-to-byte v3, v3
aput-byte v3, v5, v0
add-int/lit8 v0, v4, 0x1
move v6, v2
move v2, v0
move v0, v6
goto :goto_9
:cond_3e
move v4, v2
goto :goto_33
.end method
.method private static decodeValue(Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;
.registers 6
new-instance v0, Ljavax/mail/internet/ParameterList$Value;
const/4 v1, 0x0
invoke-direct {v0, v1}, Ljavax/mail/internet/ParameterList$Value;-><init>(Ljavax/mail/internet/ParameterList$Value;)V
iput-object p0, v0, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;
iput-object p0, v0, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;
const/16 v1, 0x27
:try_start_c
invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I
move-result v1
if-gtz v1, :cond_3a
sget-boolean v1, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z
if-eqz v1, :cond_84
new-instance v1, Ljavax/mail/internet/ParseException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Missing charset in encoded value: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V
throw v1
:try_end_2b
.catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_2b} :catch_2b
.catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_2b} :catch_62
.catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_c .. :try_end_2b} :catch_85
:catch_2b
move-exception v1
sget-boolean v2, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z
if-eqz v2, :cond_84
new-instance v0, Ljavax/mail/internet/ParseException;
invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V
throw v0
:cond_3a
const/4 v2, 0x0
:try_start_3b
invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
const/16 v3, 0x27
add-int/lit8 v4, v1, 0x1
invoke-virtual {p0, v3, v4}, Ljava/lang/String;->indexOf(II)I
move-result v3
if-gez v3, :cond_71
sget-boolean v1, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z
if-eqz v1, :cond_84
new-instance v1, Ljavax/mail/internet/ParseException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Missing language in encoded value: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V
throw v1
:catch_62
:try_end_62
.catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_62} :catch_2b
.catch Ljava/io/UnsupportedEncodingException; {:try_start_3b .. :try_end_62} :catch_62
.catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_3b .. :try_end_62} :catch_85
move-exception v1
sget-boolean v2, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z
if-eqz v2, :cond_84
new-instance v0, Ljavax/mail/internet/ParseException;
invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V
throw v0
:cond_71
add-int/lit8 v1, v1, 0x1
:try_start_73
invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
add-int/lit8 v1, v3, 0x1
invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
iput-object v2, v0, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;
invoke-static {v1, v2}, Ljavax/mail/internet/ParameterList;->decodeBytes(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;
:try_end_84
.catch Ljava/lang/NumberFormatException; {:try_start_73 .. :try_end_84} :catch_2b
.catch Ljava/io/UnsupportedEncodingException; {:try_start_73 .. :try_end_84} :catch_62
.catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_73 .. :try_end_84} :catch_85
:cond_84
return-object v0
:catch_85
move-exception v1
sget-boolean v2, Ljavax/mail/internet/ParameterList;->decodeParametersStrict:Z
if-eqz v2, :cond_84
new-instance v0, Ljavax/mail/internet/ParseException;
invoke-virtual {v1}, Ljava/lang/StringIndexOutOfBoundsException;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private static encodeValue(Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;
.registers 11
const/16 v8, 0x25
const/4 v1, 0x0
invoke-static {p0}, Ljavax/mail/internet/MimeUtility;->checkAscii(Ljava/lang/String;)I
move-result v0
const/4 v2, 0x1
if-ne v0, v2, :cond_c
move-object v0, v1
:goto_b
return-object v0
:cond_c
:try_start_c
invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
:try_end_13
.catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_13} :catch_3e
move-result-object v2
new-instance v3, Ljava/lang/StringBuffer;
array-length v0, v2
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v4
add-int/2addr v0, v4
add-int/lit8 v0, v0, 0x2
invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V
invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v4, "\'\'"
invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const/4 v0, 0x0
:goto_2b
array-length v4, v2
if-lt v0, v4, :cond_41
new-instance v0, Ljavax/mail/internet/ParameterList$Value;
invoke-direct {v0, v1}, Ljavax/mail/internet/ParameterList$Value;-><init>(Ljavax/mail/internet/ParameterList$Value;)V
iput-object p1, v0, Ljavax/mail/internet/ParameterList$Value;->charset:Ljava/lang/String;
iput-object p0, v0, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;
goto :goto_b
:catch_3e
move-exception v0
move-object v0, v1
goto :goto_b
:cond_41
aget-byte v4, v2, v0
and-int/lit16 v4, v4, 0xff
int-to-char v4, v4
const/16 v5, 0x20
if-le v4, v5, :cond_60
const/16 v5, 0x7f
if-ge v4, v5, :cond_60
const/16 v5, 0x2a
if-eq v4, v5, :cond_60
const/16 v5, 0x27
if-eq v4, v5, :cond_60
if-eq v4, v8, :cond_60
const-string v5, "()<>@,;:\\\"\t []/?="
invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I
move-result v5
if-ltz v5, :cond_7a
:cond_60
invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move-result-object v5
sget-object v6, Ljavax/mail/internet/ParameterList;->hex:[C
shr-int/lit8 v7, v4, 0x4
aget-char v6, v6, v7
invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move-result-object v5
sget-object v6, Ljavax/mail/internet/ParameterList;->hex:[C
and-int/lit8 v4, v4, 0xf
aget-char v4, v6, v4
invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:goto_77
add-int/lit8 v0, v0, 0x1
goto :goto_2b
:cond_7a
invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
goto :goto_77
.end method
.method private putEncodedName(Ljava/lang/String;Ljava/lang/String;)V
.registers 7
const/4 v3, 0x0
const/16 v0, 0x2a
invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-gez v0, :cond_f
iget-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_e
return-void
:cond_f
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
add-int/lit8 v1, v1, -0x1
if-ne v0, v1, :cond_25
invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;
invoke-static {p2}, Ljavax/mail/internet/ParameterList;->decodeValue(Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;
move-result-object v2
invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_e
:cond_25
invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;
invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;
const-string v2, ""
invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "*"
invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_5d
new-instance v1, Ljavax/mail/internet/ParameterList$Value;
const/4 v0, 0x0
invoke-direct {v1, v0}, Ljavax/mail/internet/ParameterList$Value;-><init>(Ljavax/mail/internet/ParameterList$Value;)V
move-object v0, v1
check-cast v0, Ljavax/mail/internet/ParameterList$Value;
iput-object p2, v0, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;
move-object v0, v1
check-cast v0, Ljavax/mail/internet/ParameterList$Value;
iput-object p2, v0, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
add-int/lit8 v0, v0, -0x1
invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object p1
:goto_57
iget-object v0, p0, Ljavax/mail/internet/ParameterList;->slist:Ljava/util/Map;
invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_e
:cond_5d
move-object v1, p2
goto :goto_57
.end method
.method private static quote(Ljava/lang/String;)Ljava/lang/String;
.registers 2
const-string v0, "()<>@,;:\\\"\t []/?="
invoke-static {p0, v0}, Ljavax/mail/internet/MimeUtility;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public get(Ljava/lang/String;)Ljava/lang/String;
.registers 5
iget-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Ljavax/mail/internet/ParameterList$MultiValue;
if-eqz v1, :cond_19
check-cast v0, Ljavax/mail/internet/ParameterList$MultiValue;
iget-object v0, v0, Ljavax/mail/internet/ParameterList$MultiValue;->value:Ljava/lang/String;
:goto_18
return-object v0
:cond_19
instance-of v1, v0, Ljavax/mail/internet/ParameterList$Value;
if-eqz v1, :cond_22
check-cast v0, Ljavax/mail/internet/ParameterList$Value;
iget-object v0, v0, Ljavax/mail/internet/ParameterList$Value;->value:Ljava/lang/String;
goto :goto_18
:cond_22
check-cast v0, Ljava/lang/String;
goto :goto_18
.end method
.method public getNames()Ljava/util/Enumeration;
.registers 3
new-instance v0, Ljavax/mail/internet/ParameterList$ParamEnum;
iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;
invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
invoke-direct {v0, v1}, Ljavax/mail/internet/ParameterList$ParamEnum;-><init>(Ljava/util/Iterator;)V
return-object v0
.end method
.method public remove(Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public set(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
if-nez p1, :cond_1d
if-eqz p2, :cond_1d
const-string v0, "DONE"
invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1d
sget-boolean v0, Ljavax/mail/internet/ParameterList;->decodeParameters:Z
if-eqz v0, :cond_1c
iget-object v0, p0, Ljavax/mail/internet/ParameterList;->multisegmentNames:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->size()I
move-result v0
if-lez v0, :cond_1c
const/4 v0, 0x1
:try_start_19
invoke-direct {p0, v0}, Ljavax/mail/internet/ParameterList;->combineMultisegmentNames(Z)V
:cond_1c
:goto_1c
:try_end_1c
.catch Ljavax/mail/internet/ParseException; {:try_start_19 .. :try_end_1c} :catch_3c
return-void
:cond_1d
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
sget-boolean v1, Ljavax/mail/internet/ParameterList;->decodeParameters:Z
if-eqz v1, :cond_36
:try_start_2b
invoke-direct {p0, v0, p2}, Ljavax/mail/internet/ParameterList;->putEncodedName(Ljava/lang/String;Ljava/lang/String;)V
:try_end_2e
.catch Ljavax/mail/internet/ParseException; {:try_start_2b .. :try_end_2e} :catch_2f
goto :goto_1c
:catch_2f
move-exception v1
iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;
invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_1c
:cond_36
iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;
invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_1c
:catch_3c
move-exception v0
goto :goto_1c
.end method
.method public set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 8
sget-boolean v0, Ljavax/mail/internet/ParameterList;->encodeParameters:Z
if-eqz v0, :cond_1e
invoke-static {p2, p3}, Ljavax/mail/internet/ParameterList;->encodeValue(Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/internet/ParameterList$Value;
move-result-object v0
if-eqz v0, :cond_1a
iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_19
return-void
:cond_1a
invoke-virtual {p0, p1, p2}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_19
:cond_1e
invoke-virtual {p0, p1, p2}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_19
.end method
.method public size()I
.registers 2
iget-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Ljavax/mail/internet/ParameterList;->toString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public toString(I)Ljava/lang/String;
.registers 10
new-instance v3, Ljavax/mail/internet/ParameterList$ToStringBuffer;
invoke-direct {v3, p1}, Ljavax/mail/internet/ParameterList$ToStringBuffer;-><init>(I)V
iget-object v0, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_f
:goto_f
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_1a
invoke-virtual {v3}, Ljavax/mail/internet/ParameterList$ToStringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_1a
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v1, p0, Ljavax/mail/internet/ParameterList;->list:Ljava/util/Map;
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
instance-of v2, v1, Ljavax/mail/internet/ParameterList$MultiValue;
if-eqz v2, :cond_88
check-cast v1, Ljavax/mail/internet/ParameterList$MultiValue;
new-instance v2, Ljava/lang/StringBuilder;
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v0, "*"
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
const/4 v0, 0x0
move v2, v0
:goto_41
invoke-virtual {v1}, Ljavax/mail/internet/ParameterList$MultiValue;->size()I
move-result v0
if-ge v2, v0, :cond_f
invoke-virtual {v1, v2}, Ljavax/mail/internet/ParameterList$MultiValue;->get(I)Ljava/lang/Object;
move-result-object v0
instance-of v6, v0, Ljavax/mail/internet/ParameterList$Value;
if-eqz v6, :cond_71
new-instance v6, Ljava/lang/StringBuilder;
invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "*"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
check-cast v0, Ljavax/mail/internet/ParameterList$Value;
iget-object v0, v0, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;
invoke-virtual {v3, v6, v0}, Ljavax/mail/internet/ParameterList$ToStringBuffer;->addNV(Ljava/lang/String;Ljava/lang/String;)V
:goto_6d
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_41
:cond_71
new-instance v6, Ljava/lang/StringBuilder;
invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
check-cast v0, Ljava/lang/String;
invoke-virtual {v3, v6, v0}, Ljavax/mail/internet/ParameterList$ToStringBuffer;->addNV(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_6d
:cond_88
instance-of v2, v1, Ljavax/mail/internet/ParameterList$Value;
if-eqz v2, :cond_a8
new-instance v2, Ljava/lang/StringBuilder;
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v0, "*"
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
check-cast v1, Ljavax/mail/internet/ParameterList$Value;
iget-object v1, v1, Ljavax/mail/internet/ParameterList$Value;->encodedValue:Ljava/lang/String;
invoke-virtual {v3, v0, v1}, Ljavax/mail/internet/ParameterList$ToStringBuffer;->addNV(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_f
:cond_a8
check-cast v1, Ljava/lang/String;
invoke-virtual {v3, v0, v1}, Ljavax/mail/internet/ParameterList$ToStringBuffer;->addNV(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_f
.end method