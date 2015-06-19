.class public Lcom/google/android/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/google/android/a/a/q;
.field public static final a:I = 0x0
.field public static final b:I = 0x1
.field private static final f:Ljava/lang/String; = "APKExpansionPolicy"
.field private static final g:Ljava/lang/String; = "com.android.vending.licensing.APKExpansionPolicy"
.field private static final h:Ljava/lang/String; = "lastResponse"
.field private static final i:Ljava/lang/String; = "validityTimestamp"
.field private static final j:Ljava/lang/String; = "retryUntil"
.field private static final k:Ljava/lang/String; = "maxRetries"
.field private static final l:Ljava/lang/String; = "retryCount"
.field private static final m:Ljava/lang/String; = "0"
.field private static final n:Ljava/lang/String; = "0"
.field private static final o:Ljava/lang/String; = "0"
.field private static final p:Ljava/lang/String; = "0"
.field private static final q:J = 0xea60L
.field private A:Ljava/util/Vector;
.field private r:J
.field private s:J
.field private t:J
.field private u:J
.field private v:J
.field private w:I
.field private x:Lcom/google/android/a/a/r;
.field private y:Ljava/util/Vector;
.field private z:Ljava/util/Vector;
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/a/a/p;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/google/android/a/a/b;->v:J
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
iput-object v0, p0, Lcom/google/android/a/a/b;->y:Ljava/util/Vector;
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
iput-object v0, p0, Lcom/google/android/a/a/b;->z:Ljava/util/Vector;
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
iput-object v0, p0, Lcom/google/android/a/a/b;->A:Ljava/util/Vector;
const-string v0, "com.android.vending.licensing.APKExpansionPolicy"
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
new-instance v1, Lcom/google/android/a/a/r;
invoke-direct {v1, v0, p2}, Lcom/google/android/a/a/r;-><init>(Landroid/content/SharedPreferences;Lcom/google/android/a/a/p;)V
iput-object v1, p0, Lcom/google/android/a/a/b;->x:Lcom/google/android/a/a/r;
iget-object v0, p0, Lcom/google/android/a/a/b;->x:Lcom/google/android/a/a/r;
const-string v1, "lastResponse"
const/16 v2, 0x123
invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/a/a/r;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/google/android/a/a/b;->w:I
iget-object v0, p0, Lcom/google/android/a/a/b;->x:Lcom/google/android/a/a/r;
const-string v1, "validityTimestamp"
const-string v2, "0"
invoke-virtual {v0, v1, v2}, Lcom/google/android/a/a/r;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
iput-wide v0, p0, Lcom/google/android/a/a/b;->r:J
iget-object v0, p0, Lcom/google/android/a/a/b;->x:Lcom/google/android/a/a/r;
const-string v1, "retryUntil"
const-string v2, "0"
invoke-virtual {v0, v1, v2}, Lcom/google/android/a/a/r;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
iput-wide v0, p0, Lcom/google/android/a/a/b;->s:J
iget-object v0, p0, Lcom/google/android/a/a/b;->x:Lcom/google/android/a/a/r;
const-string v1, "maxRetries"
const-string v2, "0"
invoke-virtual {v0, v1, v2}, Lcom/google/android/a/a/r;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
iput-wide v0, p0, Lcom/google/android/a/a/b;->t:J
iget-object v0, p0, Lcom/google/android/a/a/b;->x:Lcom/google/android/a/a/r;
const-string v1, "retryCount"
const-string v2, "0"
invoke-virtual {v0, v1, v2}, Lcom/google/android/a/a/r;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
iput-wide v0, p0, Lcom/google/android/a/a/b;->u:J
return-void
.end method
.method private a(J)V
.registers 6
iput-wide p1, p0, Lcom/google/android/a/a/b;->u:J
iget-object v0, p0, Lcom/google/android/a/a/b;->x:Lcom/google/android/a/a/r;
const-string v1, "retryCount"
invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method private a(Ljava/lang/String;)V
.registers 6
:try_start_0
invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
:try_end_7
.catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_16
move-result-object v0
:goto_8
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
iput-wide v0, p0, Lcom/google/android/a/a/b;->r:J
iget-object v0, p0, Lcom/google/android/a/a/b;->x:Lcom/google/android/a/a/r;
const-string v1, "validityTimestamp"
invoke-virtual {v0, v1, p1}, Lcom/google/android/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
:catch_16
move-exception v0
const-string v0, "APKExpansionPolicy"
const-string v1, "License validity timestamp (VT) missing, caching for a minute"
invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
const-wide/32 v2, 0xea60
add-long/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v1
invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object p1
goto :goto_8
.end method
.method private b(Ljava/lang/String;)V
.registers 4
:try_start_0
invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
:try_end_7
.catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_16
move-result-object v0
:goto_8
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
iput-wide v0, p0, Lcom/google/android/a/a/b;->s:J
iget-object v0, p0, Lcom/google/android/a/a/b;->x:Lcom/google/android/a/a/r;
const-string v1, "retryUntil"
invoke-virtual {v0, v1, p1}, Lcom/google/android/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
:catch_16
move-exception v0
const-string v0, "APKExpansionPolicy"
const-string v1, "License retry timestamp (GT) missing, grace period disabled"
invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
const-string p1, "0"
const-wide/16 v0, 0x0
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
goto :goto_8
.end method
.method private c(Ljava/lang/String;)V
.registers 4
:try_start_0
invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
:try_end_7
.catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_16
move-result-object v0
:goto_8
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
iput-wide v0, p0, Lcom/google/android/a/a/b;->t:J
iget-object v0, p0, Lcom/google/android/a/a/b;->x:Lcom/google/android/a/a/r;
const-string v1, "maxRetries"
invoke-virtual {v0, v1, p1}, Lcom/google/android/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
:catch_16
move-exception v0
const-string v0, "APKExpansionPolicy"
const-string v1, "Licence retry count (GR) missing, grace period disabled"
invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
const-string p1, "0"
const-wide/16 v0, 0x0
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
goto :goto_8
.end method
.method private d(Ljava/lang/String;)Ljava/util/Map;
.registers 8
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
:try_start_5
new-instance v0, Ljava/net/URI;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "?"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
const-string v1, "UTF-8"
invoke-static {v0, v1}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_27
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_66
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/http/NameValuePair;
invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;
move-result-object v2
const/4 v1, 0x0
:goto_38
invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_56
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
add-int/lit8 v1, v1, 0x1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
goto :goto_38
:cond_56
invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;
move-result-object v0
invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_5d
.catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5d} :catch_5e
goto :goto_27
:catch_5e
move-exception v0
const-string v0, "APKExpansionPolicy"
const-string v1, "Invalid syntax error while decoding extras data from server."
invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:cond_66
return-object v3
.end method
.method private d(I)V
.registers 5
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/google/android/a/a/b;->v:J
iput p1, p0, Lcom/google/android/a/a/b;->w:I
iget-object v0, p0, Lcom/google/android/a/a/b;->x:Lcom/google/android/a/a/r;
const-string v1, "lastResponse"
invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public a(I)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/google/android/a/a/b;->y:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v0
if-ge p1, v0, :cond_11
iget-object v0, p0, Lcom/google/android/a/a/b;->y:Ljava/util/Vector;
invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:goto_10
return-object v0
:cond_11
const/4 v0, 0x0
goto :goto_10
.end method
.method public a()V
.registers 4
iget-object v0, p0, Lcom/google/android/a/a/b;->x:Lcom/google/android/a/a/r;
const-string v1, "lastResponse"
const/16 v2, 0x123
invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "0"
invoke-direct {p0, v0}, Lcom/google/android/a/a/b;->b(Ljava/lang/String;)V
const-string v0, "0"
invoke-direct {p0, v0}, Lcom/google/android/a/a/b;->c(Ljava/lang/String;)V
const-string v0, "0"
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
invoke-direct {p0, v0, v1}, Lcom/google/android/a/a/b;->a(J)V
const-string v0, "0"
invoke-direct {p0, v0}, Lcom/google/android/a/a/b;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/a/a/b;->x:Lcom/google/android/a/a/r;
invoke-virtual {v0}, Lcom/google/android/a/a/r;->a()V
return-void
.end method
.method public a(IJ)V
.registers 6
iget-object v0, p0, Lcom/google/android/a/a/b;->A:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v0
if-lt p1, v0, :cond_f
iget-object v0, p0, Lcom/google/android/a/a/b;->A:Ljava/util/Vector;
add-int/lit8 v1, p1, 0x1
invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V
:cond_f
iget-object v0, p0, Lcom/google/android/a/a/b;->A:Ljava/util/Vector;
invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public a(ILcom/google/android/a/a/s;)V
.registers 9
const/16 v0, 0x123
if-eq p1, v0, :cond_4a
const-wide/16 v0, 0x0
invoke-direct {p0, v0, v1}, Lcom/google/android/a/a/b;->a(J)V
:goto_9
const/16 v0, 0x100
if-ne p1, v0, :cond_e3
iget-object v0, p2, Lcom/google/android/a/a/s;->g:Ljava/lang/String;
invoke-direct {p0, v0}, Lcom/google/android/a/a/b;->d(Ljava/lang/String;)Ljava/util/Map;
move-result-object v1
iput p1, p0, Lcom/google/android/a/a/b;->w:I
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
const-wide/32 v4, 0xea60
add-long/2addr v2, v4
invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/google/android/a/a/b;->a(Ljava/lang/String;)V
invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_2c
:cond_2c
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_f6
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v3, "VT"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_53
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-direct {p0, v0}, Lcom/google/android/a/a/b;->a(Ljava/lang/String;)V
goto :goto_2c
:cond_4a
iget-wide v0, p0, Lcom/google/android/a/a/b;->u:J
const-wide/16 v2, 0x1
add-long/2addr v0, v2
invoke-direct {p0, v0, v1}, Lcom/google/android/a/a/b;->a(J)V
goto :goto_9
:cond_53
const-string v3, "GT"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_65
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-direct {p0, v0}, Lcom/google/android/a/a/b;->b(Ljava/lang/String;)V
goto :goto_2c
:cond_65
const-string v3, "GR"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_77
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-direct {p0, v0}, Lcom/google/android/a/a/b;->c(Ljava/lang/String;)V
goto :goto_2c
:cond_77
const-string v3, "FILE_URL"
invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_99
const-string v3, "FILE_URL"
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v3
invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v3
add-int/lit8 v3, v3, -0x1
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p0, v3, v0}, Lcom/google/android/a/a/b;->a(ILjava/lang/String;)V
goto :goto_2c
:cond_99
const-string v3, "FILE_NAME"
invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_bc
const-string v3, "FILE_NAME"
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v3
invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v3
add-int/lit8 v3, v3, -0x1
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p0, v3, v0}, Lcom/google/android/a/a/b;->b(ILjava/lang/String;)V
goto/16 :goto_2c
:cond_bc
const-string v3, "FILE_SIZE"
invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_2c
const-string v3, "FILE_SIZE"
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v3
invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v3
add-int/lit8 v3, v3, -0x1
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v4
invoke-virtual {p0, v3, v4, v5}, Lcom/google/android/a/a/b;->a(IJ)V
goto/16 :goto_2c
:cond_e3
const/16 v0, 0x231
if-ne p1, v0, :cond_f6
const-string v0, "0"
invoke-direct {p0, v0}, Lcom/google/android/a/a/b;->a(Ljava/lang/String;)V
const-string v0, "0"
invoke-direct {p0, v0}, Lcom/google/android/a/a/b;->b(Ljava/lang/String;)V
const-string v0, "0"
invoke-direct {p0, v0}, Lcom/google/android/a/a/b;->c(Ljava/lang/String;)V
:cond_f6
invoke-direct {p0, p1}, Lcom/google/android/a/a/b;->d(I)V
iget-object v0, p0, Lcom/google/android/a/a/b;->x:Lcom/google/android/a/a/r;
invoke-virtual {v0}, Lcom/google/android/a/a/r;->a()V
return-void
.end method
.method public a(ILjava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/google/android/a/a/b;->y:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v0
if-lt p1, v0, :cond_f
iget-object v0, p0, Lcom/google/android/a/a/b;->y:Ljava/util/Vector;
add-int/lit8 v1, p1, 0x1
invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V
:cond_f
iget-object v0, p0, Lcom/google/android/a/a/b;->y:Ljava/util/Vector;
invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public b()J
.registers 3
iget-wide v0, p0, Lcom/google/android/a/a/b;->u:J
return-wide v0
.end method
.method public b(I)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/google/android/a/a/b;->z:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v0
if-ge p1, v0, :cond_11
iget-object v0, p0, Lcom/google/android/a/a/b;->z:Ljava/util/Vector;
invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:goto_10
return-object v0
:cond_11
const/4 v0, 0x0
goto :goto_10
.end method
.method public b(ILjava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/google/android/a/a/b;->z:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v0
if-lt p1, v0, :cond_f
iget-object v0, p0, Lcom/google/android/a/a/b;->z:Ljava/util/Vector;
add-int/lit8 v1, p1, 0x1
invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V
:cond_f
iget-object v0, p0, Lcom/google/android/a/a/b;->z:Ljava/util/Vector;
invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public c()J
.registers 3
iget-wide v0, p0, Lcom/google/android/a/a/b;->r:J
return-wide v0
.end method
.method public c(I)J
.registers 4
iget-object v0, p0, Lcom/google/android/a/a/b;->A:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v0
if-ge p1, v0, :cond_15
iget-object v0, p0, Lcom/google/android/a/a/b;->A:Ljava/util/Vector;
invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Long;
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
:goto_14
return-wide v0
:cond_15
const-wide/16 v0, -0x1
goto :goto_14
.end method
.method public d()J
.registers 3
iget-wide v0, p0, Lcom/google/android/a/a/b;->s:J
return-wide v0
.end method
.method public e()J
.registers 3
iget-wide v0, p0, Lcom/google/android/a/a/b;->t:J
return-wide v0
.end method
.method public f()I
.registers 2
iget-object v0, p0, Lcom/google/android/a/a/b;->y:Ljava/util/Vector;
invoke-virtual {v0}, Ljava/util/Vector;->size()I
move-result v0
return v0
.end method
.method public g()Z
.registers 9
const/4 v1, 0x1
const/4 v0, 0x0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
iget v4, p0, Lcom/google/android/a/a/b;->w:I
const/16 v5, 0x100
if-ne v4, v5, :cond_14
iget-wide v4, p0, Lcom/google/android/a/a/b;->r:J
cmp-long v2, v2, v4
if-gtz v2, :cond_13
move v0, v1
:cond_13
:goto_13
return v0
:cond_14
iget v4, p0, Lcom/google/android/a/a/b;->w:I
const/16 v5, 0x123
if-ne v4, v5, :cond_13
iget-wide v4, p0, Lcom/google/android/a/a/b;->v:J
const-wide/32 v6, 0xea60
add-long/2addr v4, v6
cmp-long v4, v2, v4
if-gez v4, :cond_13
iget-wide v4, p0, Lcom/google/android/a/a/b;->s:J
cmp-long v2, v2, v4
if-lez v2, :cond_32
iget-wide v2, p0, Lcom/google/android/a/a/b;->u:J
iget-wide v4, p0, Lcom/google/android/a/a/b;->t:J
cmp-long v2, v2, v4
if-gtz v2, :cond_13
:cond_32
move v0, v1
goto :goto_13
.end method