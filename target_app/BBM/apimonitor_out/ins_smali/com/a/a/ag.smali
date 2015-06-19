.class public final Lcom/a/a/ag;
.super Ljava/lang/Object;
.source "VCardUtils.java"
.field private static final a:Ljava/util/Map;
.field private static final b:Ljava/util/Set;
.field private static final c:Ljava/util/Map;
.field private static final d:Ljava/util/Map;
.field private static final e:Ljava/util/Set;
.field private static final f:Ljava/util/Set;
.field private static final g:[I
.field private static final h:[I
.method static constructor <clinit>()V
.registers 9
const/4 v8, 0x6
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x1
const/4 v4, 0x2
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/a/a/ag;->a:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/a/a/ag;->c:Ljava/util/Map;
sget-object v0, Lcom/a/a/ag;->a:Ljava/util/Map;
const/16 v1, 0x9
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
const-string v2, "CAR"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/a/a/ag;->c:Ljava/util/Map;
const-string v1, "CAR"
const/16 v2, 0x9
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/a/a/ag;->a:Ljava/util/Map;
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
const-string v2, "PAGER"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/a/a/ag;->c:Ljava/util/Map;
const-string v1, "PAGER"
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/a/a/ag;->a:Ljava/util/Map;
const/16 v1, 0xb
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
const-string v2, "ISDN"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/a/a/ag;->c:Ljava/util/Map;
const-string v1, "ISDN"
const/16 v2, 0xb
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/a/a/ag;->c:Ljava/util/Map;
const-string v1, "HOME"
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/a/a/ag;->c:Ljava/util/Map;
const-string v1, "WORK"
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/a/a/ag;->c:Ljava/util/Map;
const-string v1, "CELL"
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/a/a/ag;->c:Ljava/util/Map;
const-string v1, "OTHER"
const/4 v2, 0x7
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/a/a/ag;->c:Ljava/util/Map;
const-string v1, "CALLBACK"
const/16 v2, 0x8
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/a/a/ag;->c:Ljava/util/Map;
const-string v1, "COMPANY-MAIN"
const/16 v2, 0xa
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/a/a/ag;->c:Ljava/util/Map;
const-string v1, "RADIO"
const/16 v2, 0xe
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/a/a/ag;->c:Ljava/util/Map;
const-string v1, "TTY-TDD"
const/16 v2, 0x10
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/a/a/ag;->c:Ljava/util/Map;
const-string v1, "ASSISTANT"
const/16 v2, 0x13
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/a/a/ag;->c:Ljava/util/Map;
const-string v1, "VOICE"
const/4 v2, 0x7
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
sput-object v0, Lcom/a/a/ag;->b:Ljava/util/Set;
const-string v1, "MODEM"
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/a/a/ag;->b:Ljava/util/Set;
const-string v1, "MSG"
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/a/a/ag;->b:Ljava/util/Set;
const-string v1, "BBS"
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/a/a/ag;->b:Ljava/util/Set;
const-string v1, "VIDEO"
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/a/a/ag;->d:Ljava/util/Map;
const/4 v1, 0x0
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
const-string v2, "X-AIM"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/a/a/ag;->d:Ljava/util/Map;
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
const-string v2, "X-MSN"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/a/a/ag;->d:Ljava/util/Map;
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
const-string v2, "X-YAHOO"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/a/a/ag;->d:Ljava/util/Map;
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
const-string v2, "X-SKYPE-USERNAME"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/a/a/ag;->d:Ljava/util/Map;
const/4 v1, 0x5
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
const-string v2, "X-GOOGLE-TALK"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/a/a/ag;->d:Ljava/util/Map;
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
const-string v2, "X-ICQ"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/a/a/ag;->d:Ljava/util/Map;
const/4 v1, 0x7
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
const-string v2, "X-JABBER"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/a/a/ag;->d:Ljava/util/Map;
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
const-string v2, "X-QQ"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/a/a/ag;->d:Ljava/util/Map;
const/16 v1, 0x8
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
const-string v2, "X-NETMEETING"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Ljava/util/HashSet;
const/4 v1, 0x5
new-array v1, v1, [Ljava/lang/String;
const/4 v2, 0x0
const-string v3, "MOBILE"
aput-object v3, v1, v2
const-string v2, "\u643a\u5e2f\u96fb\u8a71"
aput-object v2, v1, v5
const-string v2, "\u643a\u5e2f"
aput-object v2, v1, v4
const-string v2, "\u30b1\u30a4\u30bf\u30a4"
aput-object v2, v1, v6
const-string v2, "\uff79\uff72\uff80\uff72"
aput-object v2, v1, v7
invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
sput-object v0, Lcom/a/a/ag;->e:Ljava/util/Set;
new-instance v0, Ljava/util/HashSet;
const/4 v1, 0x7
new-array v1, v1, [Ljava/lang/Character;
const/4 v2, 0x0
const/16 v3, 0x5b
invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v3
aput-object v3, v1, v2
const/16 v2, 0x5d
invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v2
aput-object v2, v1, v5
const/16 v2, 0x3d
invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v2
aput-object v2, v1, v4
const/16 v2, 0x3a
invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v2
aput-object v2, v1, v6
const/16 v2, 0x2e
invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v2
aput-object v2, v1, v7
const/4 v2, 0x5
const/16 v3, 0x2c
invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v3
aput-object v3, v1, v2
const/16 v2, 0x20
invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v2
aput-object v2, v1, v8
invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
sput-object v0, Lcom/a/a/ag;->f:Ljava/util/Set;
new-array v0, v7, [I
fill-array-data v0, :array_1e0
sput-object v0, Lcom/a/a/ag;->g:[I
new-array v0, v4, [I
fill-array-data v0, :array_1ec
sput-object v0, Lcom/a/a/ag;->h:[I
return-void
nop
:array_1e0
.array-data 0x4
0x3at 0x0t 0x0t 0x0t
0x3bt 0x0t 0x0t 0x0t
0x2ct 0x0t 0x0t 0x0t
0x20t 0x0t 0x0t 0x0t
.end array-data
:array_1ec
.array-data 0x4
0x3bt 0x0t 0x0t 0x0t
0x3at 0x0t 0x0t 0x0t
.end array-data
.end method
.method public static a(I)I
.registers 2
invoke-static {p0}, Lcom/a/a/c;->e(I)Z
move-result v0
if-eqz v0, :cond_8
const/4 v0, 0x2
:goto_7
return v0
:cond_8
const/4 v0, 0x1
goto :goto_7
.end method
.method public static a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;
.registers 14
const/4 v11, 0x7
const/4 v3, 0x0
const/4 v6, 0x1
if-nez p1, :cond_7
const-string p1, ""
:cond_7
const/4 v4, -0x1
const/4 v2, 0x0
if-eqz p0, :cond_ae
invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v8
move v5, v3
move v7, v3
:cond_11
:goto_11
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_88
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v0, :cond_11
sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v1
const-string v9, "PREF"
invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_2f
move v5, v6
goto :goto_11
:cond_2f
const-string v9, "FAX"
invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_39
move v7, v6
goto :goto_11
:cond_39
const-string v9, "X-"
invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_ac
if-gez v4, :cond_ac
const/4 v1, 0x2
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
move-object v1, v0
:goto_49
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v0
if-eqz v0, :cond_11
sget-object v0, Lcom/a/a/ag;->c:Ljava/util/Map;
sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {v1, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v9
invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
if-eqz v0, :cond_81
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v1
const-string v9, "@"
invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v9
const/4 v10, 0x6
if-ne v1, v10, :cond_76
if-lez v9, :cond_76
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
add-int/lit8 v1, v1, -0x1
if-lt v9, v1, :cond_7c
:cond_76
if-ltz v4, :cond_7c
if-eqz v4, :cond_7c
if-ne v4, v11, :cond_11
:cond_7c
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v4
goto :goto_11
:cond_81
if-gez v4, :cond_a9
move-object v0, v1
move v1, v3
:goto_85
move-object v2, v0
move v4, v1
goto :goto_11
:cond_88
move-object v0, v2
move v1, v4
:goto_8a
if-gez v1, :cond_90
if-eqz v5, :cond_98
const/16 v1, 0xc
:cond_90
:goto_90
if-eqz v7, :cond_95
if-ne v1, v6, :cond_9a
const/4 v1, 0x5
:cond_95
:goto_95
if-nez v1, :cond_a4
:goto_97
return-object v0
:cond_98
move v1, v6
goto :goto_90
:cond_9a
const/4 v2, 0x3
if-ne v1, v2, :cond_9f
const/4 v1, 0x4
goto :goto_95
:cond_9f
if-ne v1, v11, :cond_95
const/16 v1, 0xd
goto :goto_95
:cond_a4
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
goto :goto_97
:cond_a9
move-object v0, v2
move v1, v4
goto :goto_85
:cond_ac
move-object v1, v0
goto :goto_49
:cond_ae
move v5, v3
move v7, v3
move-object v0, v2
move v1, v4
goto :goto_8a
.end method
.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 10
const/4 v4, 0x0
move v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v5, v4
invoke-static/range {v0 .. v5}, Lcom/a/a/ag;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 15
const/16 v8, 0x20
const/4 v7, 0x3
const/4 v5, 0x2
const/4 v0, 0x1
const/4 v1, 0x0
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
new-array v4, v7, [Ljava/lang/String;
invoke-static {p0}, Lcom/a/a/c;->d(I)I
move-result v2
sparse-switch v2, :sswitch_data_72
:cond_14
aput-object p3, v4, v1
aput-object p2, v4, v0
aput-object p1, v4, v5
:goto_1a
invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_24
invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move v0, v1
:cond_24
move v2, v1
:goto_25
if-ge v2, v7, :cond_5e
aget-object v5, v4, v2
invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v6
if-nez v6, :cond_35
if-eqz v0, :cond_5a
move v0, v1
:goto_32
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_35
add-int/lit8 v2, v2, 0x1
goto :goto_25
:sswitch_38
new-array v2, v0, [Ljava/lang/String;
aput-object p1, v2, v1
invoke-static {v2}, Lcom/a/a/ag;->a([Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_4c
new-array v2, v0, [Ljava/lang/String;
aput-object p3, v2, v1
invoke-static {v2}, Lcom/a/a/ag;->a([Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_14
:cond_4c
aput-object p1, v4, v1
aput-object p2, v4, v0
aput-object p3, v4, v5
goto :goto_1a
:sswitch_53
aput-object p2, v4, v1
aput-object p3, v4, v0
aput-object p1, v4, v5
goto :goto_1a
:cond_5a
invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_32
:cond_5e
invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_6c
if-nez v0, :cond_69
invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_69
invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_6c
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
nop
:sswitch_data_72
.sparse-switch
0x4 -> :sswitch_53
0x8 -> :sswitch_38
.end sparse-switch
.end method
.method public static a(Ljava/lang/String;)Ljava/lang/String;
.registers 13
const/16 v11, 0x22
const/4 v1, 0x1
const/4 v3, 0x0
sget-object v5, Lcom/a/a/ag;->h:[I
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_e
const-string p0, ""
:cond_e
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v7
move v4, v3
move v0, v3
:goto_19
if-ge v4, v7, :cond_3a
invoke-virtual {p0, v4}, Ljava/lang/String;->codePointAt(I)I
move-result v8
const/16 v2, 0x20
if-lt v8, v2, :cond_31
if-eq v8, v11, :cond_31
invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;
array-length v9, v5
move v2, v3
:goto_2a
if-ge v2, v9, :cond_31
aget v10, v5, v2
if-ne v8, v10, :cond_37
move v0, v1
:cond_31
invoke-virtual {p0, v4, v1}, Ljava/lang/String;->offsetByCodePoints(II)I
move-result v2
move v4, v2
goto :goto_19
:cond_37
add-int/lit8 v2, v2, 0x1
goto :goto_2a
:cond_3a
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
move-result v4
if-nez v4, :cond_4e
new-array v1, v1, [Ljava/lang/String;
aput-object v2, v1, v3
invoke-static {v1}, Lcom/a/a/ag;->c([Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_51
:cond_4e
const-string v0, ""
:goto_50
return-object v0
:cond_51
if-eqz v0, :cond_67
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "\""
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_50
:cond_67
move-object v0, v2
goto :goto_50
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 12
const/16 v8, 0xa
const/4 v3, 0x0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
move v0, v3
:goto_d
if-ge v0, v2, :cond_35
invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
move-result v4
const/16 v5, 0x3d
if-ne v4, v5, :cond_31
add-int/lit8 v5, v2, -0x1
if-ge v0, v5, :cond_31
add-int/lit8 v5, v0, 0x1
invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C
move-result v5
const/16 v6, 0x20
if-eq v5, v6, :cond_29
const/16 v6, 0x9
if-ne v5, v6, :cond_31
:cond_29
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
:goto_2e
add-int/lit8 v0, v0, 0x1
goto :goto_d
:cond_31
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_2e
:cond_35
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v4
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
move v0, v3
:goto_48
if-ge v0, v4, :cond_82
invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C
move-result v6
if-ne v6, v8, :cond_5f
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
:goto_5c
:cond_5c
add-int/lit8 v0, v0, 0x1
goto :goto_48
:cond_5f
const/16 v7, 0xd
if-ne v6, v7, :cond_7e
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
add-int/lit8 v6, v4, -0x1
if-ge v0, v6, :cond_5c
add-int/lit8 v6, v0, 0x1
invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C
move-result v6
if-ne v6, v8, :cond_5c
add-int/lit8 v0, v0, 0x1
goto :goto_5c
:cond_7e
invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_5c
:cond_82
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_8f
invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_8f
new-array v0, v3, [Ljava/lang/String;
invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
array-length v5, v0
move v2, v3
:goto_9e
if-ge v2, v5, :cond_bb
aget-object v1, v0, v2
const-string v6, "="
invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_b4
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v6
add-int/lit8 v6, v6, -0x1
invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
:cond_b4
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_9e
:cond_bb
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_cc
const-string v1, "vCard"
const-string v2, "Given raw string is empty."
invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:cond_cc
:try_start_cc
invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
:try_end_cf
.catch Ljava/io/UnsupportedEncodingException; {:try_start_cc .. :try_end_cf} :catch_db
move-result-object v0
:goto_d0
:try_start_d0
invoke-static {v0}, Lcom/a/a/ai;->a([B)[B
:try_end_d3
.catch Lcom/a/a/ah; {:try_start_d0 .. :try_end_d3} :catch_f5
move-result-object v0
move-object v1, v0
:goto_d5
:try_start_d5
new-instance v0, Ljava/lang/String;
invoke-direct {v0, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
:try_end_da
.catch Ljava/io/UnsupportedEncodingException; {:try_start_d5 .. :try_end_da} :catch_ff
:goto_da
return-object v0
:catch_db
move-exception v1
const-string v1, "vCard"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Failed to decode: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
goto :goto_d0
:catch_f5
move-exception v1
const-string v1, "vCard"
const-string v2, "DecoderException is thrown."
invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
move-object v1, v0
goto :goto_d5
:catch_ff
move-exception v0
const-string v0, "vCard"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Failed to encode: charset="
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
new-instance v0, Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
goto :goto_da
.end method
.method public static a([B)Ljava/lang/String;
.registers 8
const/16 v6, 0x47
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
if-nez p0, :cond_a
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
array-length v0, p0
if-lt v0, v5, :cond_20
aget-byte v0, p0, v2
if-ne v0, v6, :cond_20
aget-byte v0, p0, v3
const/16 v1, 0x49
if-ne v0, v1, :cond_20
aget-byte v0, p0, v4
const/16 v1, 0x46
if-ne v0, v1, :cond_20
const-string v0, "GIF"
goto :goto_9
:cond_20
array-length v0, p0
const/4 v1, 0x4
if-lt v0, v1, :cond_3d
aget-byte v0, p0, v2
const/16 v1, -0x77
if-ne v0, v1, :cond_3d
aget-byte v0, p0, v3
const/16 v1, 0x50
if-ne v0, v1, :cond_3d
aget-byte v0, p0, v4
const/16 v1, 0x4e
if-ne v0, v1, :cond_3d
aget-byte v0, p0, v5
if-ne v0, v6, :cond_3d
const-string v0, "PNG"
goto :goto_9
:cond_3d
array-length v0, p0
if-lt v0, v4, :cond_4e
aget-byte v0, p0, v2
const/4 v1, -0x1
if-ne v0, v1, :cond_4e
aget-byte v0, p0, v3
const/16 v1, -0x28
if-ne v0, v1, :cond_4e
const-string v0, "JPEG"
goto :goto_9
:cond_4e
const/4 v0, 0x0
goto :goto_9
.end method
.method public static a(Ljava/lang/String;I)Ljava/util/List;
.registers 15
const/16 v11, 0x6e
const/16 v10, 0x5c
const/16 v9, 0x4e
const/16 v8, 0x3b
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v4
const/4 v1, 0x0
:goto_17
if-ge v1, v4, :cond_97
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v5
if-ne v5, v10, :cond_7f
add-int/lit8 v0, v4, -0x1
if-ge v1, v0, :cond_7f
add-int/lit8 v0, v1, 0x1
invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
move-result v0
invoke-static {p1}, Lcom/a/a/c;->c(I)Z
move-result v6
if-eqz v6, :cond_47
if-eq v0, v11, :cond_33
if-ne v0, v9, :cond_42
:cond_33
const-string v0, "\n"
:goto_35
if-eqz v0, :cond_79
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v1, 0x1
move-object v1, v2
:goto_3d
add-int/lit8 v0, v0, 0x1
move-object v2, v1
move v1, v0
goto :goto_17
:cond_42
invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;
move-result-object v0
goto :goto_35
:cond_47
invoke-static {p1}, Lcom/a/a/c;->b(I)Z
move-result v6
if-eqz v6, :cond_59
if-eq v0, v11, :cond_51
if-ne v0, v9, :cond_54
:cond_51
const-string v0, "\n"
goto :goto_35
:cond_54
invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;
move-result-object v0
goto :goto_35
:cond_59
invoke-static {p1}, Lcom/a/a/c;->a(I)Z
move-result v6
if-nez v6, :cond_66
const-string v6, "vCard"
const-string v7, "Unknown vCard type"
invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:cond_66
if-eq v0, v10, :cond_72
if-eq v0, v8, :cond_72
const/16 v6, 0x3a
if-eq v0, v6, :cond_72
const/16 v6, 0x2c
if-ne v0, v6, :cond_77
:cond_72
invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;
move-result-object v0
goto :goto_35
:cond_77
const/4 v0, 0x0
goto :goto_35
:cond_79
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move v0, v1
move-object v1, v2
goto :goto_3d
:cond_7f
if-ne v5, v8, :cond_91
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
move v12, v1
move-object v1, v0
move v0, v12
goto :goto_3d
:cond_91
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move v0, v1
move-object v1, v2
goto :goto_3d
:cond_97
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object v3
.end method
.method public static varargs a([Ljava/lang/String;)Z
.registers 9
const/4 v2, 0x1
const/4 v1, 0x0
invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_49
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v5
:cond_c
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_49
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_c
invoke-interface {v0}, Ljava/lang/CharSequence;->length()I
move-result v6
move v4, v1
:goto_23
if-ge v4, v6, :cond_47
invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C
move-result v3
const/16 v7, 0x20
if-gt v7, v3, :cond_31
const/16 v7, 0x7e
if-le v3, v7, :cond_39
:cond_31
const/16 v7, 0xd
if-eq v3, v7, :cond_39
const/16 v7, 0xa
if-ne v3, v7, :cond_41
:cond_39
move v3, v2
:goto_3a
if-nez v3, :cond_43
move v0, v1
:goto_3d
if-nez v0, :cond_c
move v0, v1
:goto_40
return v0
:cond_41
move v3, v1
goto :goto_3a
:cond_43
add-int/lit8 v3, v4, 0x1
move v4, v3
goto :goto_23
:cond_47
move v0, v2
goto :goto_3d
:cond_49
move v0, v2
goto :goto_40
.end method
.method public static b(Ljava/lang/String;)Ljava/lang/String;
.registers 6
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_8
const/4 v0, 0x0
:goto_7
return-object v0
:cond_8
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
const/4 v0, 0x0
:goto_12
if-ge v0, v2, :cond_2b
invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
move-result v3
invoke-static {v3}, Lcom/a/a/a;->a(C)Ljava/lang/String;
move-result-object v4
if-eqz v4, :cond_27
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_21
const/4 v3, 0x1
invoke-virtual {p0, v0, v3}, Ljava/lang/String;->offsetByCodePoints(II)I
move-result v0
goto :goto_12
:cond_27
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_21
:cond_2b
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_7
.end method
.method public static final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 6
invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_7
:goto_6
return-object p0
:cond_7
invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
invoke-virtual {v0, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I
move-result v1
new-array v1, v1, [B
invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
:try_start_18
new-instance p0, Ljava/lang/String;
invoke-direct {p0, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
:try_end_1d
.catch Ljava/io/UnsupportedEncodingException; {:try_start_18 .. :try_end_1d} :catch_1e
goto :goto_6
:catch_1e
move-exception v0
const-string v0, "vCard"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Failed to encode: charset="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const/4 p0, 0x0
goto :goto_6
.end method
.method public static varargs b([Ljava/lang/String;)Z
.registers 9
const/4 v2, 0x1
const/4 v1, 0x0
invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_38
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_c
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_38
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_c
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v5
move v3, v1
:goto_23
if-ge v3, v5, :cond_c
invoke-virtual {v0, v3}, Ljava/lang/String;->codePointAt(I)I
move-result v6
const/16 v7, 0x20
if-gt v7, v6, :cond_31
const/16 v7, 0x7e
if-le v6, v7, :cond_33
:cond_31
move v0, v1
:goto_32
return v0
:cond_33
invoke-virtual {v0, v3, v2}, Ljava/lang/String;->offsetByCodePoints(II)I
move-result v3
goto :goto_23
:cond_38
move v0, v2
goto :goto_32
.end method
.method public static c(Ljava/lang/String;)Z
.registers 6
const/4 v2, 0x1
const/4 v1, 0x0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
rem-int/lit8 v0, v0, 0x3
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
const/4 v4, 0x2
if-lt v3, v4, :cond_13
if-eq v0, v2, :cond_14
if-eqz v0, :cond_14
:cond_13
:goto_13
return v1
:cond_14
move v0, v1
:goto_15
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
if-ge v0, v3, :cond_26
invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
move-result v3
const/16 v4, 0x3d
if-ne v3, v4, :cond_13
add-int/lit8 v0, v0, 0x3
goto :goto_15
:cond_26
move v1, v2
goto :goto_13
.end method
.method private static varargs c([Ljava/lang/String;)Z
.registers 8
const/4 v2, 0x1
const/4 v1, 0x0
invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_36
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_c
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_36
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_c
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v5
move v3, v1
:goto_23
if-ge v3, v5, :cond_c
invoke-virtual {v0, v3}, Ljava/lang/String;->codePointAt(I)I
move-result v6
invoke-static {v6}, Ljava/lang/Character;->isWhitespace(I)Z
move-result v6
if-nez v6, :cond_31
move v0, v1
:goto_30
return v0
:cond_31
invoke-virtual {v0, v3, v2}, Ljava/lang/String;->offsetByCodePoints(II)I
move-result v3
goto :goto_23
:cond_36
move v0, v2
goto :goto_30
.end method