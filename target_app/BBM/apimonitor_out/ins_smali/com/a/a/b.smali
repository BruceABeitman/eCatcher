.class public final Lcom/a/a/b;
.super Ljava/lang/Object;
.source "VCardBuilder.java"
.field private static final f:Ljava/util/Set;
.field private static final r:Ljava/util/Map;
.field public final a:I
.field public final b:Z
.field public final c:Z
.field public final d:Z
.field public e:Ljava/lang/StringBuilder;
.field private final g:Z
.field private final h:Z
.field private final i:Z
.field private final j:Z
.field private final k:Z
.field private final l:Z
.field private final m:Z
.field private final n:Z
.field private final o:Ljava/lang/String;
.field private final p:Ljava/lang/String;
.field private q:Z
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Ljava/util/HashSet;
new-array v1, v6, [Ljava/lang/String;
const-string v2, "vnd.android.cursor.item/nickname"
aput-object v2, v1, v3
const-string v2, "vnd.android.cursor.item/contact_event"
aput-object v2, v1, v4
const-string v2, "vnd.android.cursor.item/relation"
aput-object v2, v1, v5
invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
move-result-object v0
sput-object v0, Lcom/a/a/b;->f:Ljava/util/Set;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/a/a/b;->r:Ljava/util/Map;
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/a/a/b;->r:Ljava/util/Map;
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/a/a/b;->r:Ljava/util/Map;
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/a/a/b;->r:Ljava/util/Map;
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/a/a/b;-><init>(B)V
return-void
.end method
.method private constructor <init>(B)V
.registers 8
const/4 v2, 0x1
const/4 v1, 0x0
const/4 v5, 0x0
const v4, -0x3fffffff
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v4, p0, Lcom/a/a/b;->a:I
invoke-static {v4}, Lcom/a/a/c;->c(I)Z
move-result v0
if-eqz v0, :cond_18
const-string v0, "vCard"
const-string v3, "Should not use vCard 4.0 when building vCard. It is not officially published yet."
invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:cond_18
invoke-static {v4}, Lcom/a/a/c;->b(I)Z
move-result v0
if-nez v0, :cond_24
invoke-static {v4}, Lcom/a/a/c;->c(I)Z
move-result v0
if-eqz v0, :cond_a5
:cond_24
move v0, v2
:goto_25
iput-boolean v0, p0, Lcom/a/a/b;->b:Z
invoke-static {}, Lcom/a/a/c;->a()Z
move-result v0
iput-boolean v0, p0, Lcom/a/a/b;->i:Z
invoke-static {}, Lcom/a/a/c;->h()Z
move-result v0
iput-boolean v0, p0, Lcom/a/a/b;->c:Z
invoke-static {}, Lcom/a/a/c;->f()Z
move-result v0
iput-boolean v0, p0, Lcom/a/a/b;->g:Z
invoke-static {}, Lcom/a/a/c;->g()Z
move-result v0
iput-boolean v0, p0, Lcom/a/a/b;->h:Z
invoke-static {}, Lcom/a/a/c;->b()Z
move-result v0
iput-boolean v0, p0, Lcom/a/a/b;->j:Z
invoke-static {}, Lcom/a/a/c;->c()Z
move-result v0
iput-boolean v0, p0, Lcom/a/a/b;->k:Z
invoke-static {}, Lcom/a/a/c;->d()Z
move-result v0
iput-boolean v0, p0, Lcom/a/a/b;->l:Z
invoke-static {}, Lcom/a/a/c;->e()Z
move-result v0
iput-boolean v0, p0, Lcom/a/a/b;->d:Z
invoke-static {}, Lcom/a/a/c;->f()Z
move-result v0
iput-boolean v0, p0, Lcom/a/a/b;->m:Z
invoke-static {v4}, Lcom/a/a/c;->b(I)Z
move-result v0
if-eqz v0, :cond_6b
const-string v0, "UTF-8"
invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_a8
:goto_6b
:cond_6b
iput-boolean v2, p0, Lcom/a/a/b;->n:Z
invoke-static {}, Lcom/a/a/c;->h()Z
invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_aa
const-string v0, "vCard"
const-string v2, "Use the charset \"UTF-8\" for export."
invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
const-string v0, "UTF-8"
iput-object v0, p0, Lcom/a/a/b;->o:Ljava/lang/String;
const-string v0, "CHARSET=UTF-8"
iput-object v0, p0, Lcom/a/a/b;->p:Ljava/lang/String;
:goto_85
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iput-object v0, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
iput-boolean v1, p0, Lcom/a/a/b;->q:Z
const-string v0, "BEGIN"
const-string v1, "VCARD"
invoke-virtual {p0, v0, v1}, Lcom/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V
iget v0, p0, Lcom/a/a/b;->a:I
invoke-static {v0}, Lcom/a/a/c;->c(I)Z
move-result v0
if-eqz v0, :cond_be
const-string v0, "VERSION"
const-string v1, "4.0"
invoke-virtual {p0, v0, v1}, Lcom/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_a4
return-void
:cond_a5
move v0, v1
goto/16 :goto_25
:cond_a8
move v2, v1
goto :goto_6b
:cond_aa
iput-object v5, p0, Lcom/a/a/b;->o:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "CHARSET="
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/a/a/b;->p:Ljava/lang/String;
goto :goto_85
:cond_be
iget v0, p0, Lcom/a/a/b;->a:I
invoke-static {v0}, Lcom/a/a/c;->b(I)Z
move-result v0
if-eqz v0, :cond_ce
const-string v0, "VERSION"
const-string v1, "3.0"
invoke-virtual {p0, v0, v1}, Lcom/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_a4
:cond_ce
iget v0, p0, Lcom/a/a/b;->a:I
invoke-static {v0}, Lcom/a/a/c;->a(I)Z
move-result v0
if-nez v0, :cond_dd
const-string v0, "vCard"
const-string v1, "Unknown vCard version detected."
invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:cond_dd
const-string v0, "VERSION"
const-string v1, "2.1"
invoke-virtual {p0, v0, v1}, Lcom/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_a4
.end method
.method private a(Ljava/lang/String;)Ljava/lang/String;
.registers 10
const/4 v2, 0x0
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_a
const-string v0, ""
:goto_9
return-object v0
:cond_a
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
:try_start_f
iget-object v0, p0, Lcom/a/a/b;->o:Ljava/lang/String;
invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
:try_end_14
.catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_14} :catch_3d
move-result-object v0
move v1, v2
move v3, v2
:cond_17
:goto_17
array-length v5, v0
if-ge v3, v5, :cond_61
const-string v5, "=%02X"
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/Object;
aget-byte v7, v0, v3
invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
move-result-object v7
aput-object v7, v6, v2
invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v3, v3, 0x1
add-int/lit8 v1, v1, 0x3
const/16 v5, 0x43
if-lt v1, v5, :cond_17
const-string v1, "=\r\n"
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move v1, v2
goto :goto_17
:catch_3d
move-exception v0
const-string v0, "vCard"
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "Charset "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/a/a/b;->o:Ljava/lang/String;
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, " cannot be used. Try default charset"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B
move-result-object v0
move v1, v2
move v3, v2
goto :goto_17
:cond_61
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_9
.end method
.method private static a(Landroid/content/ContentValues;)Z
.registers 10
const-string v0, "data3"
invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "data5"
invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "data2"
invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v3, "data4"
invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string v4, "data6"
invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
const-string v5, "data9"
invoke-virtual {p0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
const-string v6, "data8"
invoke-virtual {p0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
const-string v7, "data7"
invoke-virtual {p0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
const-string v8, "data1"
invoke-virtual {p0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_6c
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_6c
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_6c
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_6c
invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_6c
invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_6c
invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_6c
invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_6c
invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_6e
:cond_6c
const/4 v0, 0x1
:goto_6d
return v0
:cond_6e
const/4 v0, 0x0
goto :goto_6d
.end method
.method private varargs a([Ljava/lang/String;)Z
.registers 8
const/4 v1, 0x1
const/4 v0, 0x0
iget-boolean v2, p0, Lcom/a/a/b;->n:Z
if-nez v2, :cond_7
:goto_6
:cond_6
return v0
:cond_7
array-length v3, p1
move v2, v0
:goto_9
if-ge v2, v3, :cond_6
aget-object v4, p1, v2
new-array v5, v1, [Ljava/lang/String;
aput-object v4, v5, v0
invoke-static {v5}, Lcom/a/a/ag;->a([Ljava/lang/String;)Z
move-result v4
if-nez v4, :cond_19
move v0, v1
goto :goto_6
:cond_19
add-int/lit8 v2, v2, 0x1
goto :goto_9
.end method
.method private static b(Ljava/util/List;)Landroid/content/ContentValues;
.registers 6
const/4 v1, 0x0
invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
move-object v2, v1
:goto_6
:cond_6
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_53
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/ContentValues;
if-eqz v0, :cond_6
const-string v4, "is_super_primary"
invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v4
if-eqz v4, :cond_27
invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
move-result v4
if-lez v4, :cond_27
:goto_22
if-nez v0, :cond_4f
if-eqz v1, :cond_49
:goto_26
return-object v1
:cond_27
if-nez v2, :cond_51
const-string v4, "is_primary"
invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v4
if-eqz v4, :cond_3f
invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
move-result v4
if-lez v4, :cond_3f
invoke-static {v0}, Lcom/a/a/b;->a(Landroid/content/ContentValues;)Z
move-result v4
if-eqz v4, :cond_3f
move-object v2, v0
goto :goto_6
:cond_3f
if-nez v1, :cond_51
invoke-static {v0}, Lcom/a/a/b;->a(Landroid/content/ContentValues;)Z
move-result v4
if-eqz v4, :cond_51
:goto_47
move-object v1, v0
goto :goto_6
:cond_49
new-instance v1, Landroid/content/ContentValues;
invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
goto :goto_26
:cond_4f
move-object v1, v0
goto :goto_26
:cond_51
move-object v0, v1
goto :goto_47
:cond_53
move-object v0, v2
goto :goto_22
.end method
.method private b(Ljava/lang/String;)Ljava/lang/String;
.registers 8
const/16 v5, 0x5c
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_b
const-string v0, ""
:goto_a
return-object v0
:cond_b
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v2
const/4 v0, 0x0
:goto_15
if-ge v0, v2, :cond_66
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v3
sparse-switch v3, :sswitch_data_6c
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_21
:goto_21
add-int/lit8 v0, v0, 0x1
goto :goto_15
:sswitch_24
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const/16 v3, 0x3b
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_21
:sswitch_2d
add-int/lit8 v3, v0, 0x1
if-ge v3, v2, :cond_39
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v3
const/16 v4, 0xa
if-eq v3, v4, :cond_21
:cond_39
:sswitch_39
const-string v3, "\\n"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_21
:sswitch_3f
iget-boolean v4, p0, Lcom/a/a/b;->b:Z
if-eqz v4, :cond_49
const-string v3, "\\\\"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_21
:sswitch_49
:cond_49
iget-boolean v4, p0, Lcom/a/a/b;->c:Z
if-eqz v4, :cond_54
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_21
:cond_54
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_21
:sswitch_58
iget-boolean v4, p0, Lcom/a/a/b;->b:Z
if-eqz v4, :cond_62
const-string v3, "\\,"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_21
:cond_62
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_21
:cond_66
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_a
nop
:sswitch_data_6c
.sparse-switch
0xa -> :sswitch_39
0xd -> :sswitch_2d
0x2c -> :sswitch_58
0x3b -> :sswitch_24
0x3c -> :sswitch_49
0x3e -> :sswitch_49
0x5c -> :sswitch_3f
.end sparse-switch
.end method
.method private b(Landroid/content/ContentValues;)V
.registers 13
const/16 v10, 0x20
const/4 v7, 0x1
const/4 v6, 0x0
const-string v0, "data9"
invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v0, "data8"
invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v0, "data7"
invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-boolean v3, p0, Lcom/a/a/b;->m:Z
if-eqz v3, :cond_26
invoke-static {v2}, Lcom/a/a/ag;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v1}, Lcom/a/a/ag;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v0}, Lcom/a/a/ag;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:cond_26
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_7c
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_7c
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_7c
iget-boolean v0, p0, Lcom/a/a/b;->c:Z
if-eqz v0, :cond_7b
iget-object v0, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v1, "SOUND"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v1, ";"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v1, "X-IRMC-N"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v1, ":"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v1, ";"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v1, ";"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v1, ";"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v1, ";"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v1, "\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_7b
:goto_7b
return-void
:cond_7c
iget v3, p0, Lcom/a/a/b;->a:I
invoke-static {v3}, Lcom/a/a/c;->c(I)Z
move-result v3
if-nez v3, :cond_d0
iget v3, p0, Lcom/a/a/b;->a:I
invoke-static {v3}, Lcom/a/a/c;->b(I)Z
move-result v3
if-eqz v3, :cond_1ed
iget v3, p0, Lcom/a/a/b;->a:I
invoke-static {v3, v2, v1, v0}, Lcom/a/a/ag;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v5, "SORT-STRING"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v4, p0, Lcom/a/a/b;->a:I
invoke-static {v4}, Lcom/a/a/c;->b(I)Z
move-result v4
if-eqz v4, :cond_b9
new-array v4, v7, [Ljava/lang/String;
aput-object v3, v4, v6
invoke-direct {p0, v4}, Lcom/a/a/b;->a([Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_b9
iget-object v4, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v5, ";"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v4, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
iget-object v5, p0, Lcom/a/a/b;->p:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_b9
iget-object v4, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v5, ":"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v4, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
invoke-direct {p0, v3}, Lcom/a/a/b;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v3, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v4, "\r\n"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_d0
:goto_d0
iget-boolean v3, p0, Lcom/a/a/b;->k:Z
if-eqz v3, :cond_7b
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_131
iget-boolean v3, p0, Lcom/a/a/b;->i:Z
if-eqz v3, :cond_2c4
new-array v3, v7, [Ljava/lang/String;
aput-object v0, v3, v6
invoke-static {v3}, Lcom/a/a/ag;->b([Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_2c4
move v4, v7
:goto_e9
if-eqz v4, :cond_2c7
invoke-direct {p0, v0}, Lcom/a/a/b;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
:goto_ef
iget-object v5, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v8, "X-PHONETIC-FIRST-NAME"
invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-array v5, v7, [Ljava/lang/String;
aput-object v0, v5, v6
invoke-direct {p0, v5}, Lcom/a/a/b;->a([Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_10e
iget-object v0, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v5, ";"
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
iget-object v5, p0, Lcom/a/a/b;->p:Ljava/lang/String;
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_10e
if-eqz v4, :cond_11e
iget-object v0, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v4, ";"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v4, "ENCODING=QUOTED-PRINTABLE"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_11e
iget-object v0, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v4, ":"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v3, "\r\n"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_131
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_18e
iget-boolean v0, p0, Lcom/a/a/b;->i:Z
if-eqz v0, :cond_2cd
new-array v0, v7, [Ljava/lang/String;
aput-object v1, v0, v6
invoke-static {v0}, Lcom/a/a/ag;->b([Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_2cd
move v3, v7
:goto_146
if-eqz v3, :cond_2d0
invoke-direct {p0, v1}, Lcom/a/a/b;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_14c
iget-object v4, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v5, "X-PHONETIC-MIDDLE-NAME"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-array v4, v7, [Ljava/lang/String;
aput-object v1, v4, v6
invoke-direct {p0, v4}, Lcom/a/a/b;->a([Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_16b
iget-object v1, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v4, ";"
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
iget-object v4, p0, Lcom/a/a/b;->p:Ljava/lang/String;
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_16b
if-eqz v3, :cond_17b
iget-object v1, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v3, ";"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v3, "ENCODING=QUOTED-PRINTABLE"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_17b
iget-object v1, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v3, ":"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v1, "\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_18e
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_7b
iget-boolean v0, p0, Lcom/a/a/b;->i:Z
if-eqz v0, :cond_2d6
new-array v0, v7, [Ljava/lang/String;
aput-object v2, v0, v6
invoke-static {v0}, Lcom/a/a/ag;->b([Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_2d6
move v1, v7
:goto_1a3
if-eqz v1, :cond_2d9
invoke-direct {p0, v2}, Lcom/a/a/b;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_1a9
iget-object v3, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v4, "X-PHONETIC-LAST-NAME"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-array v3, v7, [Ljava/lang/String;
aput-object v2, v3, v6
invoke-direct {p0, v3}, Lcom/a/a/b;->a([Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_1c8
iget-object v2, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v3, ";"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v2, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
iget-object v3, p0, Lcom/a/a/b;->p:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_1c8
if-eqz v1, :cond_1d8
iget-object v1, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v2, ";"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v2, "ENCODING=QUOTED-PRINTABLE"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_1d8
iget-object v1, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v2, ":"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v1, "\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto/16 :goto_7b
:cond_1ed
iget-boolean v3, p0, Lcom/a/a/b;->g:Z
if-eqz v3, :cond_d0
iget-object v3, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v4, "SOUND"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v3, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v4, ";"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v3, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v4, "X-IRMC-N"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-boolean v3, p0, Lcom/a/a/b;->l:Z
if-nez v3, :cond_2ad
new-array v3, v7, [Ljava/lang/String;
aput-object v2, v3, v6
invoke-static {v3}, Lcom/a/a/ag;->b([Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_228
new-array v3, v7, [Ljava/lang/String;
aput-object v1, v3, v6
invoke-static {v3}, Lcom/a/a/ag;->b([Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_228
new-array v3, v7, [Ljava/lang/String;
aput-object v0, v3, v6
invoke-static {v3}, Lcom/a/a/ag;->b([Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_2ad
:cond_228
move v3, v7
:goto_229
if-eqz v3, :cond_2b0
invoke-direct {p0, v2}, Lcom/a/a/b;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-direct {p0, v1}, Lcom/a/a/b;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-direct {p0, v0}, Lcom/a/a/b;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
:goto_237
const/4 v8, 0x3
new-array v8, v8, [Ljava/lang/String;
aput-object v4, v8, v6
aput-object v3, v8, v7
const/4 v9, 0x2
aput-object v5, v8, v9
invoke-direct {p0, v8}, Lcom/a/a/b;->a([Ljava/lang/String;)Z
move-result v8
if-eqz v8, :cond_255
iget-object v8, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v9, ";"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v8, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
iget-object v9, p0, Lcom/a/a/b;->p:Ljava/lang/String;
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_255
iget-object v8, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v9, ":"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v8
if-nez v8, :cond_2df
iget-object v8, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move v4, v6
:goto_268
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v8
if-nez v8, :cond_276
if-eqz v4, :cond_2be
move v4, v6
:goto_271
iget-object v8, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_276
invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_288
if-nez v4, :cond_283
iget-object v3, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_283
iget-object v3, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_288
iget-object v3, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v4, ";"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v3, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v4, ";"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v3, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v4, ";"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v3, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v4, ";"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v3, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v4, "\r\n"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto/16 :goto_d0
:cond_2ad
move v3, v6
goto/16 :goto_229
:cond_2b0
invoke-direct {p0, v2}, Lcom/a/a/b;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-direct {p0, v1}, Lcom/a/a/b;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-direct {p0, v0}, Lcom/a/a/b;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
goto/16 :goto_237
:cond_2be
iget-object v8, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_271
:cond_2c4
move v4, v6
goto/16 :goto_e9
:cond_2c7
invoke-direct {p0, v0}, Lcom/a/a/b;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
goto/16 :goto_ef
:cond_2cd
move v3, v6
goto/16 :goto_146
:cond_2d0
invoke-direct {p0, v1}, Lcom/a/a/b;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto/16 :goto_14c
:cond_2d6
move v1, v6
goto/16 :goto_1a3
:cond_2d9
invoke-direct {p0, v2}, Lcom/a/a/b;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto/16 :goto_1a9
:cond_2df
move v4, v7
goto :goto_268
.end method
.method private b(Ljava/lang/String;Ljava/lang/String;)V
.registers 8
const/4 v2, 0x1
const/4 v3, 0x0
iget-boolean v0, p0, Lcom/a/a/b;->l:Z
if-nez v0, :cond_51
new-array v0, v2, [Ljava/lang/String;
aput-object p2, v0, v3
invoke-static {v0}, Lcom/a/a/ag;->b([Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_51
move v1, v2
:goto_11
if-eqz v1, :cond_53
invoke-direct {p0, p2}, Lcom/a/a/b;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_17
iget-object v4, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-array v2, v2, [Ljava/lang/String;
aput-object p2, v2, v3
invoke-direct {p0, v2}, Lcom/a/a/b;->a([Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_34
iget-object v2, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v3, ";"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v2, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
iget-object v3, p0, Lcom/a/a/b;->p:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_34
if-eqz v1, :cond_44
iget-object v1, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v2, ";"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v2, "ENCODING=QUOTED-PRINTABLE"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_44
iget-object v1, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v2, ":"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
return-void
:cond_51
move v1, v3
goto :goto_11
:cond_53
invoke-direct {p0, p2}, Lcom/a/a/b;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_17
.end method
.method public final a(Ljava/util/List;)Lcom/a/a/b;
.registers 20
move-object/from16 v0, p0
iget v1, v0, Lcom/a/a/b;->a:I
invoke-static {v1}, Lcom/a/a/c;->c(I)Z
move-result v1
if-eqz v1, :cond_1d3
move-object/from16 v0, p0
iget-boolean v1, v0, Lcom/a/a/b;->c:Z
if-nez v1, :cond_16
move-object/from16 v0, p0
iget-boolean v1, v0, Lcom/a/a/b;->m:Z
if-eqz v1, :cond_1d
:cond_16
const-string v1, "vCard"
const-string v2, "Invalid flag is used in vCard 4.0 construction. Ignored."
invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:cond_1d
invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z
move-result v1
if-eqz v1, :cond_2d
const-string v1, "FN"
const-string v2, ""
move-object/from16 v0, p0
invoke-virtual {v0, v1, v2}, Lcom/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_2c
:cond_2c
return-object p0
:cond_2d
invoke-static/range {p1 .. p1}, Lcom/a/a/b;->b(Ljava/util/List;)Landroid/content/ContentValues;
move-result-object v7
const-string v1, "data3"
invoke-virtual {v7, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v1, "data5"
invoke-virtual {v7, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string v1, "data2"
invoke-virtual {v7, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
const-string v1, "data4"
invoke-virtual {v7, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
const-string v1, "data6"
invoke-virtual {v7, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
const-string v1, "data1"
invoke-virtual {v7, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v8
if-eqz v8, :cond_84
invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v8
if-eqz v8, :cond_84
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v8
if-eqz v8, :cond_84
invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v8
if-eqz v8, :cond_84
invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v8
if-eqz v8, :cond_84
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_83
const-string v1, "FN"
const-string v2, ""
move-object/from16 v0, p0
invoke-virtual {v0, v1, v2}, Lcom/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2c
:cond_83
move-object v2, v1
:cond_84
const-string v8, "data9"
invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
const-string v9, "data8"
invoke-virtual {v7, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
const-string v10, "data7"
invoke-virtual {v7, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v10
move-object/from16 v0, p0
invoke-direct {v0, v2}, Lcom/a/a/b;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v11
move-object/from16 v0, p0
invoke-direct {v0, v4}, Lcom/a/a/b;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
move-object/from16 v0, p0
invoke-direct {v0, v3}, Lcom/a/a/b;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v13
move-object/from16 v0, p0
invoke-direct {v0, v5}, Lcom/a/a/b;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v14
move-object/from16 v0, p0
invoke-direct {v0, v6}, Lcom/a/a/b;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v15
move-object/from16 v0, p0
iget-object v0, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
move-object/from16 v16, v0
const-string v17, "N"
invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v16
if-eqz v16, :cond_d1
invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v16
if-eqz v16, :cond_d1
invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v16
if-nez v16, :cond_124
:cond_d1
move-object/from16 v0, p0
iget-object v0, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
move-object/from16 v16, v0
const-string v17, ";"
invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v16, Ljava/lang/StringBuilder;
invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, p0
invoke-direct {v0, v8}, Lcom/a/a/b;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
move-object/from16 v0, v16
invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const/16 v16, 0x3b
move/from16 v0, v16
invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v8
move-object/from16 v0, p0
invoke-direct {v0, v10}, Lcom/a/a/b;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v10
invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const/16 v10, 0x3b
invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v8
move-object/from16 v0, p0
invoke-direct {v0, v9}, Lcom/a/a/b;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
move-object/from16 v0, p0
iget-object v9, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v10, "SORT-AS="
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-static {v8}, Lcom/a/a/ag;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_124
move-object/from16 v0, p0
iget-object v8, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v9, ":"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v8, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v8, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v9, ";"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v8, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v8, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v9, ";"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v8, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v8, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v9, ";"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v8, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v8, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v9, ";"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v8, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v8, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v9, "\r\n"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v8
if-eqz v8, :cond_1aa
const-string v1, "vCard"
const-string v8, "DISPLAY_NAME is empty."
invoke-static {v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
move-object/from16 v0, p0
iget v1, v0, Lcom/a/a/b;->a:I
invoke-static {v1}, Lcom/a/a/c;->d(I)I
move-result v1
invoke-static/range {v1 .. v6}, Lcom/a/a/ag;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
move-object/from16 v0, p0
invoke-direct {v0, v1}, Lcom/a/a/b;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "FN"
move-object/from16 v0, p0
invoke-virtual {v0, v2, v1}, Lcom/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_1a3
move-object/from16 v0, p0
invoke-direct {v0, v7}, Lcom/a/a/b;->b(Landroid/content/ContentValues;)V
goto/16 :goto_2c
:cond_1aa
move-object/from16 v0, p0
invoke-direct {v0, v1}, Lcom/a/a/b;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
move-object/from16 v0, p0
iget-object v2, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v3, "FN"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v3, ":"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v2, "\r\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_1a3
:cond_1d3
invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z
move-result v1
if-eqz v1, :cond_208
move-object/from16 v0, p0
iget v1, v0, Lcom/a/a/b;->a:I
invoke-static {v1}, Lcom/a/a/c;->b(I)Z
move-result v1
if-eqz v1, :cond_1f7
const-string v1, "N"
const-string v2, ""
move-object/from16 v0, p0
invoke-virtual {v0, v1, v2}, Lcom/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "FN"
const-string v2, ""
move-object/from16 v0, p0
invoke-virtual {v0, v1, v2}, Lcom/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_2c
:cond_1f7
move-object/from16 v0, p0
iget-boolean v1, v0, Lcom/a/a/b;->c:Z
if-eqz v1, :cond_2c
const-string v1, "N"
const-string v2, ""
move-object/from16 v0, p0
invoke-virtual {v0, v1, v2}, Lcom/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_2c
:cond_208
invoke-static/range {p1 .. p1}, Lcom/a/a/b;->b(Ljava/util/List;)Landroid/content/ContentValues;
move-result-object v11
const-string v1, "data3"
invoke-virtual {v11, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v1, "data5"
invoke-virtual {v11, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string v1, "data2"
invoke-virtual {v11, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
const-string v1, "data4"
invoke-virtual {v11, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
const-string v1, "data6"
invoke-virtual {v11, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
const-string v1, "data1"
invoke-virtual {v11, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_23c
invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_471
:cond_23c
const/4 v1, 0x5
new-array v1, v1, [Ljava/lang/String;
const/4 v7, 0x0
aput-object v2, v1, v7
const/4 v7, 0x1
aput-object v4, v1, v7
const/4 v7, 0x2
aput-object v3, v1, v7
const/4 v7, 0x3
aput-object v5, v1, v7
const/4 v7, 0x4
aput-object v6, v1, v7
move-object/from16 v0, p0
invoke-direct {v0, v1}, Lcom/a/a/b;->a([Ljava/lang/String;)Z
move-result v12
move-object/from16 v0, p0
iget-boolean v1, v0, Lcom/a/a/b;->l:Z
if-nez v1, :cond_3c0
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/String;
const/4 v7, 0x0
aput-object v2, v1, v7
invoke-static {v1}, Lcom/a/a/ag;->b([Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_296
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/String;
const/4 v7, 0x0
aput-object v4, v1, v7
invoke-static {v1}, Lcom/a/a/ag;->b([Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_296
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/String;
const/4 v7, 0x0
aput-object v3, v1, v7
invoke-static {v1}, Lcom/a/a/ag;->b([Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_296
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/String;
const/4 v7, 0x0
aput-object v5, v1, v7
invoke-static {v1}, Lcom/a/a/ag;->b([Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_296
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/String;
const/4 v7, 0x0
aput-object v6, v1, v7
invoke-static {v1}, Lcom/a/a/ag;->b([Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_3c0
:cond_296
const/4 v1, 0x1
move v7, v1
:goto_298
invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_4ec
move-object/from16 v0, p0
iget v1, v0, Lcom/a/a/b;->a:I
invoke-static {v1}, Lcom/a/a/c;->d(I)I
move-result v1
invoke-static/range {v1 .. v6}, Lcom/a/a/ag;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
:goto_2aa
const/4 v8, 0x1
new-array v8, v8, [Ljava/lang/String;
const/4 v9, 0x0
aput-object v1, v8, v9
move-object/from16 v0, p0
invoke-direct {v0, v8}, Lcom/a/a/b;->a([Ljava/lang/String;)Z
move-result v13
move-object/from16 v0, p0
iget-boolean v8, v0, Lcom/a/a/b;->l:Z
if-nez v8, :cond_3c4
const/4 v8, 0x1
new-array v8, v8, [Ljava/lang/String;
const/4 v9, 0x0
aput-object v1, v8, v9
invoke-static {v8}, Lcom/a/a/ag;->b([Ljava/lang/String;)Z
move-result v8
if-nez v8, :cond_3c4
const/4 v8, 0x1
move v10, v8
:goto_2ca
if-eqz v7, :cond_3c8
move-object/from16 v0, p0
invoke-direct {v0, v2}, Lcom/a/a/b;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
move-object/from16 v0, p0
invoke-direct {v0, v4}, Lcom/a/a/b;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
move-object/from16 v0, p0
invoke-direct {v0, v3}, Lcom/a/a/b;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
move-object/from16 v0, p0
invoke-direct {v0, v5}, Lcom/a/a/b;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
move-object/from16 v0, p0
invoke-direct {v0, v6}, Lcom/a/a/b;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
move-object v5, v4
move-object v6, v8
move-object v4, v3
move-object v8, v9
move-object v3, v2
:goto_2ef
if-eqz v10, :cond_3ed
move-object/from16 v0, p0
invoke-direct {v0, v1}, Lcom/a/a/b;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
:goto_2f7
move-object/from16 v0, p0
iget-object v9, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v14, "N"
invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-boolean v9, v0, Lcom/a/a/b;->c:Z
if-eqz v9, :cond_3f5
if-eqz v12, :cond_31c
move-object/from16 v0, p0
iget-object v3, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v4, ";"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v4, v0, Lcom/a/a/b;->p:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_31c
if-eqz v7, :cond_330
move-object/from16 v0, p0
iget-object v3, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v4, ";"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v4, "ENCODING=QUOTED-PRINTABLE"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_330
move-object/from16 v0, p0
iget-object v3, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v4, ":"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v3, ";"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v3, ";"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v3, ";"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v3, ";"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_364
move-object/from16 v0, p0
iget-object v1, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v3, "\r\n"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v3, "FN"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
if-eqz v13, :cond_38c
move-object/from16 v0, p0
iget-object v1, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v3, ";"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/a/a/b;->p:Ljava/lang/String;
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_38c
if-eqz v10, :cond_3a0
move-object/from16 v0, p0
iget-object v1, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v3, ";"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v3, "ENCODING=QUOTED-PRINTABLE"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_3a0
move-object/from16 v0, p0
iget-object v1, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v3, ":"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v2, "\r\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_3b9
:goto_3b9
move-object/from16 v0, p0
invoke-direct {v0, v11}, Lcom/a/a/b;->b(Landroid/content/ContentValues;)V
goto/16 :goto_2c
:cond_3c0
const/4 v1, 0x0
move v7, v1
goto/16 :goto_298
:cond_3c4
const/4 v8, 0x0
move v10, v8
goto/16 :goto_2ca
:cond_3c8
move-object/from16 v0, p0
invoke-direct {v0, v2}, Lcom/a/a/b;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
move-object/from16 v0, p0
invoke-direct {v0, v4}, Lcom/a/a/b;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
move-object/from16 v0, p0
invoke-direct {v0, v3}, Lcom/a/a/b;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
move-object/from16 v0, p0
invoke-direct {v0, v5}, Lcom/a/a/b;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
move-object/from16 v0, p0
invoke-direct {v0, v6}, Lcom/a/a/b;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
move-object v5, v4
move-object v6, v8
move-object v4, v3
move-object v8, v9
move-object v3, v2
goto/16 :goto_2ef
:cond_3ed
move-object/from16 v0, p0
invoke-direct {v0, v1}, Lcom/a/a/b;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
goto/16 :goto_2f7
:cond_3f5
if-eqz v12, :cond_40b
move-object/from16 v0, p0
iget-object v1, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v9, ";"
invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v9, v0, Lcom/a/a/b;->p:Ljava/lang/String;
invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_40b
if-eqz v7, :cond_41f
move-object/from16 v0, p0
iget-object v1, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v7, ";"
invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v7, "ENCODING=QUOTED-PRINTABLE"
invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_41f
move-object/from16 v0, p0
iget-object v1, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v7, ":"
invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v7, ";"
invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v5, ";"
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v5, ";"
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v4, ";"
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto/16 :goto_364
:cond_471
invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_4bd
const-string v1, "N"
move-object/from16 v0, p0
invoke-direct {v0, v1, v8}, Lcom/a/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v2, ";"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v2, ";"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v2, ";"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v2, ";"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v2, "\r\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "FN"
move-object/from16 v0, p0
invoke-direct {v0, v1, v8}, Lcom/a/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v2, "\r\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto/16 :goto_3b9
:cond_4bd
move-object/from16 v0, p0
iget v1, v0, Lcom/a/a/b;->a:I
invoke-static {v1}, Lcom/a/a/c;->b(I)Z
move-result v1
if-eqz v1, :cond_4db
const-string v1, "N"
const-string v2, ""
move-object/from16 v0, p0
invoke-virtual {v0, v1, v2}, Lcom/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "FN"
const-string v2, ""
move-object/from16 v0, p0
invoke-virtual {v0, v1, v2}, Lcom/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_3b9
:cond_4db
move-object/from16 v0, p0
iget-boolean v1, v0, Lcom/a/a/b;->c:Z
if-eqz v1, :cond_3b9
const-string v1, "N"
const-string v2, ""
move-object/from16 v0, p0
invoke-virtual {v0, v1, v2}, Lcom/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_3b9
:cond_4ec
move-object v1, v8
goto/16 :goto_2aa
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-direct {p0, p2}, Lcom/a/a/b;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v2, ":"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
const-string v1, "\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
return-void
.end method
.method public final toString()Ljava/lang/String;
.registers 3
iget-boolean v0, p0, Lcom/a/a/b;->q:Z
if-nez v0, :cond_2e
iget-boolean v0, p0, Lcom/a/a/b;->c:Z
if-eqz v0, :cond_24
const-string v0, "X-CLASS"
const-string v1, "PUBLIC"
invoke-virtual {p0, v0, v1}, Lcom/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "X-REDUCTION"
const-string v1, ""
invoke-virtual {p0, v0, v1}, Lcom/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "X-NO"
const-string v1, ""
invoke-virtual {p0, v0, v1}, Lcom/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "X-DCM-HMN-MODE"
const-string v1, ""
invoke-virtual {p0, v0, v1}, Lcom/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_24
const-string v0, "END"
const-string v1, "VCARD"
invoke-virtual {p0, v0, v1}, Lcom/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/a/a/b;->q:Z
:cond_2e
iget-object v0, p0, Lcom/a/a/b;->e:Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method