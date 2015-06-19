.class public final Lcom/instagram/android/h/c;
.super Ljava/lang/Object;
.source "Hashtag.java"
.field public static a:Ljava/lang/String;
.field private b:Ljava/lang/String;
.field private c:I
.method static constructor <clinit>()V
.registers 1
const-string v0, "com.instagram.android.model.Hashtag.BROADCAST_HASHTAG_UPDATED"
sput-object v0, Lcom/instagram/android/h/c;->a:Ljava/lang/String;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/android/h/c;->b:Ljava/lang/String;
return-void
.end method
.method static synthetic a(Lcom/instagram/android/h/c;I)I
.registers 2
iput p1, p0, Lcom/instagram/android/h/c;->c:I
return p1
.end method
.method public static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/h/c;
.registers 4
const/4 v0, 0x0
:goto_1
:cond_1
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;
if-eq v1, v2, :cond_40
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_16
if-nez v0, :cond_16
new-instance v0, Lcom/instagram/android/h/c;
invoke-direct {v0}, Lcom/instagram/android/h/c;-><init>()V
:cond_16
const-string v2, "media_count"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_28
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getIntValue()I
move-result v1
iput v1, v0, Lcom/instagram/android/h/c;->c:I
goto :goto_1
:cond_28
const-string v2, "name"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_3a
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/instagram/android/h/c;->b:Ljava/lang/String;
goto :goto_1
:cond_3a
if-eqz v1, :cond_1
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;
goto :goto_1
:cond_40
return-object v0
.end method
.method static synthetic a(Lcom/instagram/android/h/c;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/android/h/c;->b:Ljava/lang/String;
return-object v0
.end method
.method static synthetic a(Lcom/instagram/android/h/c;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/instagram/android/h/c;->b:Ljava/lang/String;
return-object p1
.end method
.method public static a(Ljava/lang/String;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
sget-object v1, Lcom/instagram/android/h/c;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "|"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/android/h/c;->b:Ljava/lang/String;
return-object v0
.end method
.method public final a(Landroid/content/Context;Landroid/support/v4/app/an;)V
.registers 4
new-instance v0, Lcom/instagram/android/h/d;
invoke-direct {v0, p0, p1, p2}, Lcom/instagram/android/h/d;-><init>(Lcom/instagram/android/h/c;Landroid/content/Context;Landroid/support/v4/app/an;)V
invoke-virtual {v0}, Lcom/instagram/android/h/d;->h()V
return-void
.end method
.method public final b()I
.registers 2
iget v0, p0, Lcom/instagram/android/h/c;->c:I
return v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-eqz p1, :cond_11
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_13
:cond_11
move v0, v1
goto :goto_4
:cond_13
check-cast p1, Lcom/instagram/android/h/c;
iget-object v2, p0, Lcom/instagram/android/h/c;->b:Ljava/lang/String;
if-eqz v2, :cond_25
iget-object v2, p0, Lcom/instagram/android/h/c;->b:Ljava/lang/String;
iget-object v3, p1, Lcom/instagram/android/h/c;->b:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:goto_23
move v0, v1
goto :goto_4
:cond_25
iget-object v2, p1, Lcom/instagram/android/h/c;->b:Ljava/lang/String;
if-eqz v2, :cond_4
goto :goto_23
.end method
.method public final hashCode()I
.registers 2
iget-object v0, p0, Lcom/instagram/android/h/c;->b:Ljava/lang/String;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/instagram/android/h/c;->b:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method