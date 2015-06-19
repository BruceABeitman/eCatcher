.class public abstract Lcom/twidroid/model/twitter/CommunicationEntity;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;
.field public static a:Z = false
.field public static final b:I = 0x0
.field public static final c:I = 0x1
.field public static final d:I = 0x2
.field public static final e:I = 0x3
.field public static final f:[Lcom/ubermedia/model/twitter/UrlEntity; = null
.field public static final g:[Lcom/ubermedia/model/twitter/HashtagEntity; = null
.field public static final h:[Lcom/ubermedia/model/twitter/MediaUrlEntity; = null
.field public static final i:[Lcom/ubermedia/model/twitter/MentionEntity; = null
.field public static final j:Ljava/lang/String; = "id"
.field public static final k:Ljava/lang/String; = "sender_id"
.field public static final l:Ljava/lang/String; = "message"
.field public static final m:Ljava/lang/String; = "created_at"
.field public static final n:Ljava/lang/String; = "user_name"
.field public static final o:Ljava/lang/String; = "user_screenname"
.field public static final p:Ljava/lang/String; = "user_avatar"
.field public static final q:Ljava/lang/String; = "account"
.field public static final r:Ljava/lang/String; = "type"
.field public static final s:Ljava/lang/String; = "readflag"
.field public static final t:Ljava/lang/String; = "deleted"
.field public static final u:Ljava/lang/String; = "spans"
.field public static final v:Ljava/lang/String; = "is_inner_circle"
.field public A:Ljava/lang/String;
.field public B:Ljava/lang/String;
.field public C:J
.field public D:J
.field public E:Z
.field public F:Z
.field public G:[Lcom/ubermedia/model/twitter/UrlEntity;
.field public H:[Lcom/ubermedia/model/twitter/MediaUrlEntity;
.field public I:[Lcom/ubermedia/model/twitter/HashtagEntity;
.field public J:[Lcom/ubermedia/model/twitter/MentionEntity;
.field public final w:J
.field public final x:J
.field public y:Lcom/twidroid/ui/StringUrlSpan;
.field public z:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 2
const/4 v1, 0x0
sput-boolean v1, Lcom/twidroid/model/twitter/CommunicationEntity;->a:Z
new-array v0, v1, [Lcom/ubermedia/model/twitter/UrlEntity;
sput-object v0, Lcom/twidroid/model/twitter/CommunicationEntity;->f:[Lcom/ubermedia/model/twitter/UrlEntity;
new-array v0, v1, [Lcom/ubermedia/model/twitter/HashtagEntity;
sput-object v0, Lcom/twidroid/model/twitter/CommunicationEntity;->g:[Lcom/ubermedia/model/twitter/HashtagEntity;
new-array v0, v1, [Lcom/ubermedia/model/twitter/MediaUrlEntity;
sput-object v0, Lcom/twidroid/model/twitter/CommunicationEntity;->h:[Lcom/ubermedia/model/twitter/MediaUrlEntity;
new-array v0, v1, [Lcom/ubermedia/model/twitter/MentionEntity;
sput-object v0, Lcom/twidroid/model/twitter/CommunicationEntity;->i:[Lcom/ubermedia/model/twitter/MentionEntity;
return-void
.end method
.method public constructor <init>(JJLcom/twidroid/ui/StringUrlSpan;)V
.registers 7
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->E:Z
iput-boolean v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->F:Z
sget-object v0, Lcom/twidroid/model/twitter/CommunicationEntity;->f:[Lcom/ubermedia/model/twitter/UrlEntity;
iput-object v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->G:[Lcom/ubermedia/model/twitter/UrlEntity;
sget-object v0, Lcom/twidroid/model/twitter/CommunicationEntity;->h:[Lcom/ubermedia/model/twitter/MediaUrlEntity;
iput-object v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->H:[Lcom/ubermedia/model/twitter/MediaUrlEntity;
sget-object v0, Lcom/twidroid/model/twitter/CommunicationEntity;->g:[Lcom/ubermedia/model/twitter/HashtagEntity;
iput-object v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->I:[Lcom/ubermedia/model/twitter/HashtagEntity;
sget-object v0, Lcom/twidroid/model/twitter/CommunicationEntity;->i:[Lcom/ubermedia/model/twitter/MentionEntity;
iput-object v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->J:[Lcom/ubermedia/model/twitter/MentionEntity;
iput-wide p3, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->w:J
iput-wide p1, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->x:J
iput-object p5, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->y:Lcom/twidroid/ui/StringUrlSpan;
return-void
.end method
.method protected constructor <init>(Landroid/os/Parcel;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->E:Z
iput-boolean v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->F:Z
sget-object v0, Lcom/twidroid/model/twitter/CommunicationEntity;->f:[Lcom/ubermedia/model/twitter/UrlEntity;
iput-object v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->G:[Lcom/ubermedia/model/twitter/UrlEntity;
sget-object v0, Lcom/twidroid/model/twitter/CommunicationEntity;->h:[Lcom/ubermedia/model/twitter/MediaUrlEntity;
iput-object v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->H:[Lcom/ubermedia/model/twitter/MediaUrlEntity;
sget-object v0, Lcom/twidroid/model/twitter/CommunicationEntity;->g:[Lcom/ubermedia/model/twitter/HashtagEntity;
iput-object v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->I:[Lcom/ubermedia/model/twitter/HashtagEntity;
sget-object v0, Lcom/twidroid/model/twitter/CommunicationEntity;->i:[Lcom/ubermedia/model/twitter/MentionEntity;
iput-object v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->J:[Lcom/ubermedia/model/twitter/MentionEntity;
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->x:J
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->w:J
const-class v0, Lcom/twidroid/ui/StringUrlSpan;
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/StringUrlSpan;
iput-object v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->y:Lcom/twidroid/ui/StringUrlSpan;
return-void
.end method
.method public static final a(Lorg/json/JSONObject;Ljava/lang/String;J)J
.registers 5
if-eqz p0, :cond_e
invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_e
invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_f
:cond_e
:goto_e
return-wide p2
:cond_f
invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide p2
goto :goto_e
.end method
.method protected static a(Ljava/lang/String;[Lcom/ubermedia/model/twitter/MentionEntity;[Lcom/ubermedia/model/twitter/HashtagEntity;[Lcom/ubermedia/model/twitter/UrlEntity;[Lcom/ubermedia/model/twitter/MediaUrlEntity;)Lcom/twidroid/ui/StringUrlSpan;
.registers 16
const/4 v1, 0x0
:try_start_1
new-instance v2, Landroid/text/SpannableStringBuilder;
invoke-direct {v2, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
if-eqz p1, :cond_44
array-length v3, p1
move v0, v1
:goto_a
if-ge v0, v3, :cond_44
aget-object v4, p1, v0
invoke-virtual {v4}, Lcom/ubermedia/model/twitter/MentionEntity;->f()I
move-result v5
invoke-virtual {v4}, Lcom/ubermedia/model/twitter/MentionEntity;->g()I
move-result v6
const/4 v7, 0x0
invoke-virtual {p0, v7, v5}, Ljava/lang/String;->codePointCount(II)I
move-result v7
sub-int v7, v5, v7
new-instance v8, Lcom/ubermedia/ui/MyURLSpan;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "@"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v4}, Lcom/ubermedia/model/twitter/MentionEntity;->a()Ljava/lang/String;
move-result-object v4
invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v8, v4}, Lcom/ubermedia/ui/MyURLSpan;-><init>(Ljava/lang/String;)V
add-int v4, v5, v7
add-int v5, v6, v7
const/4 v6, 0x0
invoke-virtual {v2, v8, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
add-int/lit8 v0, v0, 0x1
goto :goto_a
:cond_44
if-eqz p2, :cond_82
array-length v3, p2
move v0, v1
:goto_48
if-ge v0, v3, :cond_82
aget-object v4, p2, v0
invoke-virtual {v4}, Lcom/ubermedia/model/twitter/HashtagEntity;->f()I
move-result v5
invoke-virtual {v4}, Lcom/ubermedia/model/twitter/HashtagEntity;->g()I
move-result v6
const/4 v7, 0x0
invoke-virtual {p0, v7, v5}, Ljava/lang/String;->codePointCount(II)I
move-result v7
sub-int v7, v5, v7
new-instance v8, Lcom/ubermedia/ui/MyURLSpan;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "#"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v4}, Lcom/ubermedia/model/twitter/HashtagEntity;->a()Ljava/lang/String;
move-result-object v4
invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v8, v4}, Lcom/ubermedia/ui/MyURLSpan;-><init>(Ljava/lang/String;)V
add-int v4, v5, v7
add-int v5, v6, v7
const/4 v6, 0x0
invoke-virtual {v2, v8, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
add-int/lit8 v0, v0, 0x1
goto :goto_48
:cond_82
if-eqz p3, :cond_b5
array-length v3, p3
move v0, v1
:goto_86
if-ge v0, v3, :cond_b5
aget-object v4, p3, v0
invoke-virtual {v4}, Lcom/ubermedia/model/twitter/UrlEntity;->f()I
move-result v5
invoke-virtual {v4}, Lcom/ubermedia/model/twitter/UrlEntity;->g()I
move-result v6
const/4 v7, 0x0
invoke-virtual {p0, v7, v5}, Ljava/lang/String;->codePointCount(II)I
move-result v7
sub-int v7, v5, v7
new-instance v8, Lcom/ubermedia/ui/StringSpanInfo;
invoke-virtual {v4}, Lcom/ubermedia/model/twitter/UrlEntity;->e()Ljava/lang/String;
move-result-object v9
invoke-virtual {v4}, Lcom/ubermedia/model/twitter/UrlEntity;->d()Ljava/lang/String;
move-result-object v10
invoke-virtual {v4}, Lcom/ubermedia/model/twitter/UrlEntity;->c()Ljava/lang/String;
move-result-object v4
invoke-direct {v8, v9, v10, v4}, Lcom/ubermedia/ui/StringSpanInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;)V
add-int v4, v5, v7
add-int v5, v6, v7
const/4 v6, 0x0
invoke-virtual {v2, v8, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
add-int/lit8 v0, v0, 0x1
goto :goto_86
:cond_b5
if-eqz p4, :cond_e8
array-length v3, p4
move v0, v1
:goto_b9
if-ge v0, v3, :cond_e8
aget-object v4, p4, v0
invoke-virtual {v4}, Lcom/ubermedia/model/twitter/MediaUrlEntity;->f()I
move-result v5
invoke-virtual {v4}, Lcom/ubermedia/model/twitter/MediaUrlEntity;->g()I
move-result v6
const/4 v7, 0x0
invoke-virtual {p0, v7, v5}, Ljava/lang/String;->codePointCount(II)I
move-result v7
sub-int v7, v5, v7
new-instance v8, Lcom/ubermedia/ui/StringSpanInfo;
invoke-virtual {v4}, Lcom/ubermedia/model/twitter/MediaUrlEntity;->a()Ljava/lang/String;
move-result-object v9
invoke-virtual {v4}, Lcom/ubermedia/model/twitter/MediaUrlEntity;->b()Ljava/lang/String;
move-result-object v10
invoke-virtual {v4}, Lcom/ubermedia/model/twitter/MediaUrlEntity;->e()Ljava/lang/String;
move-result-object v4
invoke-direct {v8, v9, v10, v4}, Lcom/ubermedia/ui/StringSpanInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;)V
add-int v4, v5, v7
add-int v5, v6, v7
const/4 v6, 0x0
invoke-virtual {v2, v8, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
add-int/lit8 v0, v0, 0x1
goto :goto_b9
:cond_e8
invoke-static {v2}, Lcom/twidroid/ui/StringUrlSpan;->a(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/ui/StringUrlSpan;->b(Landroid/text/Spannable;)Lcom/twidroid/ui/StringUrlSpan;
:try_end_ef
.catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_ef} :catch_f1
move-result-object v0
return-object v0
:catch_f1
move-exception v0
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "failed with entities in "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v3, " "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "\n"
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
if-eqz p1, :cond_11e
move v0, v1
:goto_113
array-length v3, p1
if-ge v0, v3, :cond_11e
aget-object v3, p1, v0
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_113
:cond_11e
if-eqz p2, :cond_12c
move v0, v1
:goto_121
array-length v3, p2
if-ge v0, v3, :cond_12c
aget-object v3, p2, v0
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_121
:cond_12c
if-eqz p3, :cond_13a
move v0, v1
:goto_12f
array-length v3, p3
if-ge v0, v3, :cond_13a
aget-object v3, p3, v0
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_12f
:cond_13a
if-eqz p4, :cond_147
:goto_13c
array-length v0, p4
if-ge v1, v0, :cond_147
aget-object v0, p4, v1
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
add-int/lit8 v1, v1, 0x1
goto :goto_13c
:cond_147
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public static final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 5
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x9
if-ge v0, v1, :cond_27
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_1d
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_13
:cond_12
:goto_12
return-object p2
:cond_13
new-instance p2, Ljava/lang/String;
invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
invoke-direct {p2, v0}, Ljava/lang/String;-><init>([C)V
goto :goto_12
:cond_1d
new-instance p2, Ljava/lang/String;
invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
invoke-direct {p2, v0}, Ljava/lang/String;-><init>([C)V
goto :goto_12
:cond_27
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_39
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_12
new-instance p2, Ljava/lang/String;
invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
goto :goto_12
:cond_39
new-instance p2, Ljava/lang/String;
invoke-direct {p2, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
goto :goto_12
.end method
.method public static final a(Lorg/json/JSONObject;)Ljava/lang/String;
.registers 3
const-string v0, "text"
const-string v1, ""
invoke-static {p0, v0, v1}, Lcom/twidroid/model/twitter/CommunicationEntity;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static final a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 6
if-eqz p0, :cond_e
invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_e
invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_f
:cond_e
:goto_e
return-object p2
:cond_f
invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x9
if-ge v1, v2, :cond_29
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_e
new-instance p2, Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
invoke-direct {p2, v0}, Ljava/lang/String;-><init>([C)V
goto :goto_e
:cond_29
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_e
move-object p2, v0
goto :goto_e
.end method
.method protected static a(Lcom/twidroid/model/twitter/CommunicationEntity;Lorg/json/JSONObject;)V
.registers 8
const/4 v0, 0x0
const-string v1, "urls"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_2b
const-string v1, "urls"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v2
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v3
if-lez v3, :cond_2b
new-array v1, v3, [Lcom/ubermedia/model/twitter/UrlEntity;
iput-object v1, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->G:[Lcom/ubermedia/model/twitter/UrlEntity;
move v1, v0
:goto_1a
if-ge v1, v3, :cond_2b
iget-object v4, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->G:[Lcom/ubermedia/model/twitter/UrlEntity;
invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v5
invoke-static {v5}, Lcom/ubermedia/model/twitter/UrlEntity;->b(Lorg/json/JSONObject;)Lcom/ubermedia/model/twitter/UrlEntity;
move-result-object v5
aput-object v5, v4, v1
add-int/lit8 v1, v1, 0x1
goto :goto_1a
:cond_2b
const-string v1, "hashtags"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_55
const-string v1, "hashtags"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v2
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v3
if-lez v3, :cond_55
new-array v1, v3, [Lcom/ubermedia/model/twitter/HashtagEntity;
iput-object v1, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->I:[Lcom/ubermedia/model/twitter/HashtagEntity;
move v1, v0
:goto_44
if-ge v1, v3, :cond_55
iget-object v4, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->I:[Lcom/ubermedia/model/twitter/HashtagEntity;
invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v5
invoke-static {v5}, Lcom/ubermedia/model/twitter/HashtagEntity;->a(Lorg/json/JSONObject;)Lcom/ubermedia/model/twitter/HashtagEntity;
move-result-object v5
aput-object v5, v4, v1
add-int/lit8 v1, v1, 0x1
goto :goto_44
:cond_55
const-string v1, "user_mentions"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_7f
const-string v1, "user_mentions"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v2
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v3
if-lez v3, :cond_7f
new-array v1, v3, [Lcom/ubermedia/model/twitter/MentionEntity;
iput-object v1, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->J:[Lcom/ubermedia/model/twitter/MentionEntity;
move v1, v0
:goto_6e
if-ge v1, v3, :cond_7f
iget-object v4, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->J:[Lcom/ubermedia/model/twitter/MentionEntity;
invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v5
invoke-static {v5}, Lcom/ubermedia/model/twitter/MentionEntity;->a(Lorg/json/JSONObject;)Lcom/ubermedia/model/twitter/MentionEntity;
move-result-object v5
aput-object v5, v4, v1
add-int/lit8 v1, v1, 0x1
goto :goto_6e
:cond_7f
const-string v1, "media"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_a8
const-string v1, "media"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v1
invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
move-result v2
if-lez v2, :cond_a8
new-array v3, v2, [Lcom/ubermedia/model/twitter/MediaUrlEntity;
iput-object v3, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->H:[Lcom/ubermedia/model/twitter/MediaUrlEntity;
:goto_97
if-ge v0, v2, :cond_a8
iget-object v3, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->H:[Lcom/ubermedia/model/twitter/MediaUrlEntity;
invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v4
invoke-static {v4}, Lcom/ubermedia/model/twitter/MediaUrlEntity;->a(Lorg/json/JSONObject;)Lcom/ubermedia/model/twitter/MediaUrlEntity;
move-result-object v4
aput-object v4, v3, v0
add-int/lit8 v0, v0, 0x1
goto :goto_97
:cond_a8
return-void
.end method
.method public static b(Lcom/twidroid/model/twitter/CommunicationEntity;)Lcom/twidroid/d/n;
.registers 9
const/4 v1, 0x0
const/16 v7, 0xc8
invoke-virtual {p0}, Lcom/twidroid/model/twitter/CommunicationEntity;->o()Lcom/twidroid/ui/StringUrlSpan;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/StringUrlSpan;->b()[Landroid/text/style/URLSpan;
move-result-object v3
array-length v4, v3
const/4 v0, 0x0
move v2, v0
move-object v0, v1
:goto_f
if-ge v2, v4, :cond_27
aget-object v5, v3, v2
instance-of v6, v5, Lcom/ubermedia/ui/StringSpanInfo;
if-eqz v6, :cond_5c
invoke-virtual {v5}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;
move-result-object v0
invoke-static {v0, v7}, Lcom/twidroid/d/m;->a(Ljava/lang/String;I)Lcom/twidroid/d/n;
move-result-object v0
sget-object v6, Lcom/twidroid/d/m;->z:Lcom/twidroid/d/n;
if-eq v0, v6, :cond_5c
invoke-virtual {v5}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;
move-result-object v1
:cond_27
if-nez v1, :cond_5b
sget-object v1, Lcom/ubermedia/ui/b;->p:Ljava/util/regex/Pattern;
invoke-virtual {p0}, Lcom/twidroid/model/twitter/CommunicationEntity;->n()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v1
:cond_33
invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z
move-result v2
if-eqz v2, :cond_5b
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "http://"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0, v7}, Lcom/twidroid/d/m;->a(Ljava/lang/String;I)Lcom/twidroid/d/n;
move-result-object v0
sget-object v2, Lcom/twidroid/d/m;->z:Lcom/twidroid/d/n;
if-eq v0, v2, :cond_33
invoke-virtual {v0}, Lcom/twidroid/d/n;->f()Ljava/lang/String;
:cond_5b
return-object v0
:cond_5c
add-int/lit8 v2, v2, 0x1
goto :goto_f
.end method
.method public static e(Ljava/lang/String;)Z
.registers 6
const/16 v4, 0x40
const/4 v1, 0x1
const/4 v2, 0x0
invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;
move-result-object v0
if-eqz p0, :cond_3c
if-eqz v0, :cond_3c
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v3
if-lez v3, :cond_20
invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C
move-result v3
if-ne v3, v4, :cond_20
invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object p0
:cond_20
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v3
if-lez v3, :cond_34
invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C
move-result v3
if-ne v3, v4, :cond_34
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
:cond_34
invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_3c
move v0, v1
:goto_3b
return v0
:cond_3c
move v0, v2
goto :goto_3b
.end method
.method public a(Lcom/twidroid/model/twitter/CommunicationEntity;)I
.registers 6
iget-wide v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->w:J
iget-wide v2, p1, Lcom/twidroid/model/twitter/CommunicationEntity;->w:J
cmp-long v0, v0, v2
if-lez v0, :cond_a
const/4 v0, -0x1
:goto_9
return v0
:cond_a
iget-wide v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->w:J
iget-wide v2, p1, Lcom/twidroid/model/twitter/CommunicationEntity;->w:J
cmp-long v0, v0, v2
if-nez v0, :cond_14
const/4 v0, 0x0
goto :goto_9
:cond_14
const/4 v0, 0x1
goto :goto_9
.end method
.method protected a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 5
sget-boolean v0, Lcom/twidroid/model/twitter/CommunicationEntity;->a:Z
if-eqz v0, :cond_c
const-string v0, "_normal"
const-string v1, "_bigger"
invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object p2
:cond_c
return-object p2
.end method
.method public a(Lcom/twidroid/ui/StringUrlSpan;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->y:Lcom/twidroid/ui/StringUrlSpan;
return-void
.end method
.method public a([Lcom/ubermedia/model/twitter/HashtagEntity;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->I:[Lcom/ubermedia/model/twitter/HashtagEntity;
return-void
.end method
.method public a([Lcom/ubermedia/model/twitter/MediaUrlEntity;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->H:[Lcom/ubermedia/model/twitter/MediaUrlEntity;
return-void
.end method
.method public a([Lcom/ubermedia/model/twitter/MentionEntity;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->J:[Lcom/ubermedia/model/twitter/MentionEntity;
return-void
.end method
.method public a([Lcom/ubermedia/model/twitter/UrlEntity;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->G:[Lcom/ubermedia/model/twitter/UrlEntity;
return-void
.end method
.method public b(J)V
.registers 3
iput-wide p1, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->C:J
return-void
.end method
.method public b(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->z:Ljava/lang/String;
return-void
.end method
.method public b(Z)V
.registers 2
iput-boolean p1, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->E:Z
return-void
.end method
.method public c(J)V
.registers 3
iput-wide p1, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->D:J
return-void
.end method
.method public c(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->A:Ljava/lang/String;
return-void
.end method
.method public c(Z)V
.registers 2
iput-boolean p1, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->F:Z
return-void
.end method
.method public synthetic compareTo(Ljava/lang/Object;)I
.registers 3
check-cast p1, Lcom/twidroid/model/twitter/CommunicationEntity;
invoke-virtual {p0, p1}, Lcom/twidroid/model/twitter/CommunicationEntity;->a(Lcom/twidroid/model/twitter/CommunicationEntity;)I
move-result v0
return v0
.end method
.method public d()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->A:Ljava/lang/String;
iget-object v1, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->B:Ljava/lang/String;
invoke-virtual {p0, v0, v1}, Lcom/twidroid/model/twitter/CommunicationEntity;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public d(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->B:Ljava/lang/String;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->z:Ljava/lang/String;
return-object v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 8
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-nez p1, :cond_9
move v0, v1
goto :goto_4
:cond_9
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_15
move v0, v1
goto :goto_4
:cond_15
check-cast p1, Lcom/twidroid/model/twitter/CommunicationEntity;
iget-wide v2, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->D:J
iget-wide v4, p1, Lcom/twidroid/model/twitter/CommunicationEntity;->D:J
cmp-long v2, v2, v4
if-eqz v2, :cond_21
move v0, v1
goto :goto_4
:cond_21
iget-wide v2, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->w:J
iget-wide v4, p1, Lcom/twidroid/model/twitter/CommunicationEntity;->w:J
cmp-long v2, v2, v4
if-eqz v2, :cond_2b
move v0, v1
goto :goto_4
:cond_2b
iget-wide v2, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->x:J
iget-wide v4, p1, Lcom/twidroid/model/twitter/CommunicationEntity;->x:J
cmp-long v2, v2, v4
if-eqz v2, :cond_35
move v0, v1
goto :goto_4
:cond_35
iget-boolean v2, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->E:Z
iget-boolean v3, p1, Lcom/twidroid/model/twitter/CommunicationEntity;->E:Z
if-eq v2, v3, :cond_3d
move v0, v1
goto :goto_4
:cond_3d
iget-wide v2, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->C:J
iget-wide v4, p1, Lcom/twidroid/model/twitter/CommunicationEntity;->C:J
cmp-long v2, v2, v4
if-eqz v2, :cond_47
move v0, v1
goto :goto_4
:cond_47
iget-object v2, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->y:Lcom/twidroid/ui/StringUrlSpan;
if-nez v2, :cond_51
iget-object v2, p1, Lcom/twidroid/model/twitter/CommunicationEntity;->y:Lcom/twidroid/ui/StringUrlSpan;
if-eqz v2, :cond_5d
move v0, v1
goto :goto_4
:cond_51
iget-object v2, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->y:Lcom/twidroid/ui/StringUrlSpan;
iget-object v3, p1, Lcom/twidroid/model/twitter/CommunicationEntity;->y:Lcom/twidroid/ui/StringUrlSpan;
invoke-virtual {v2, v3}, Lcom/twidroid/ui/StringUrlSpan;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_5d
move v0, v1
goto :goto_4
:cond_5d
iget-object v2, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->B:Ljava/lang/String;
if-nez v2, :cond_67
iget-object v2, p1, Lcom/twidroid/model/twitter/CommunicationEntity;->B:Ljava/lang/String;
if-eqz v2, :cond_73
move v0, v1
goto :goto_4
:cond_67
iget-object v2, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->B:Ljava/lang/String;
iget-object v3, p1, Lcom/twidroid/model/twitter/CommunicationEntity;->B:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_73
move v0, v1
goto :goto_4
:cond_73
iget-object v2, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->z:Ljava/lang/String;
if-nez v2, :cond_7d
iget-object v2, p1, Lcom/twidroid/model/twitter/CommunicationEntity;->z:Ljava/lang/String;
if-eqz v2, :cond_8a
move v0, v1
goto :goto_4
:cond_7d
iget-object v2, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->z:Ljava/lang/String;
iget-object v3, p1, Lcom/twidroid/model/twitter/CommunicationEntity;->z:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_8a
move v0, v1
goto/16 :goto_4
:cond_8a
iget-object v2, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->A:Ljava/lang/String;
if-nez v2, :cond_95
iget-object v2, p1, Lcom/twidroid/model/twitter/CommunicationEntity;->A:Ljava/lang/String;
if-eqz v2, :cond_4
move v0, v1
goto/16 :goto_4
:cond_95
iget-object v2, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->A:Ljava/lang/String;
iget-object v3, p1, Lcom/twidroid/model/twitter/CommunicationEntity;->A:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto/16 :goto_4
.end method
.method public f()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->A:Ljava/lang/String;
return-object v0
.end method
.method public g()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->B:Ljava/lang/String;
return-object v0
.end method
.method public h()J
.registers 3
iget-wide v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->C:J
return-wide v0
.end method
.method public hashCode()I
.registers 8
const/16 v6, 0x20
const/4 v1, 0x0
iget-wide v2, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->D:J
iget-wide v4, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->D:J
ushr-long/2addr v4, v6
xor-long/2addr v2, v4
long-to-int v0, v2
add-int/lit8 v0, v0, 0x1f
mul-int/lit8 v0, v0, 0x1f
iget-wide v2, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->w:J
iget-wide v4, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->w:J
ushr-long/2addr v4, v6
xor-long/2addr v2, v4
long-to-int v2, v2
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-wide v2, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->x:J
iget-wide v4, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->x:J
ushr-long/2addr v4, v6
xor-long/2addr v2, v4
long-to-int v2, v2
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-boolean v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->E:Z
if-eqz v0, :cond_53
const/16 v0, 0x4cf
:goto_28
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-wide v2, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->C:J
iget-wide v4, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->C:J
ushr-long/2addr v4, v6
xor-long/2addr v2, v4
long-to-int v2, v2
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->y:Lcom/twidroid/ui/StringUrlSpan;
if-nez v0, :cond_56
move v0, v1
:goto_3a
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->B:Ljava/lang/String;
if-nez v0, :cond_5d
move v0, v1
:goto_42
add-int/2addr v0, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->z:Ljava/lang/String;
if-nez v0, :cond_64
move v0, v1
:goto_4a
add-int/2addr v0, v2
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->A:Ljava/lang/String;
if-nez v2, :cond_6b
:goto_51
add-int/2addr v0, v1
return v0
:cond_53
const/16 v0, 0x4d5
goto :goto_28
:cond_56
iget-object v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->y:Lcom/twidroid/ui/StringUrlSpan;
invoke-virtual {v0}, Lcom/twidroid/ui/StringUrlSpan;->hashCode()I
move-result v0
goto :goto_3a
:cond_5d
iget-object v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->B:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_42
:cond_64
iget-object v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->z:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
goto :goto_4a
:cond_6b
iget-object v1, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->A:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
goto :goto_51
.end method
.method public i()J
.registers 3
iget-wide v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->D:J
return-wide v0
.end method
.method public j()Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->E:Z
return v0
.end method
.method public k()Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->F:Z
return v0
.end method
.method public l()J
.registers 3
iget-wide v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->w:J
return-wide v0
.end method
.method public m()J
.registers 3
iget-wide v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->x:J
return-wide v0
.end method
.method public n()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->y:Lcom/twidroid/ui/StringUrlSpan;
invoke-virtual {v0}, Lcom/twidroid/ui/StringUrlSpan;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public o()Lcom/twidroid/ui/StringUrlSpan;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->y:Lcom/twidroid/ui/StringUrlSpan;
return-object v0
.end method
.method public p()Ljava/lang/String;
.registers 9
:try_start_0
new-instance v2, Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->y:Lcom/twidroid/ui/StringUrlSpan;
invoke-virtual {v0}, Lcom/twidroid/ui/StringUrlSpan;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->y:Lcom/twidroid/ui/StringUrlSpan;
invoke-virtual {v0}, Lcom/twidroid/ui/StringUrlSpan;->b()[Landroid/text/style/URLSpan;
move-result-object v3
array-length v4, v3
const/4 v0, 0x0
move v1, v0
:goto_14
if-ge v1, v4, :cond_5f
aget-object v0, v3, v1
instance-of v5, v0, Lcom/ubermedia/ui/StringSpanInfo;
if-eqz v5, :cond_5b
check-cast v0, Lcom/ubermedia/ui/StringSpanInfo;
iget-object v5, v0, Lcom/ubermedia/ui/StringSpanInfo;->a:Ljava/lang/CharSequence;
invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v5
const-string v6, "\u2026"
invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v5
if-eqz v5, :cond_5b
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
iget-object v6, v0, Lcom/ubermedia/ui/StringSpanInfo;->a:Ljava/lang/CharSequence;
invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v5
if-eqz v5, :cond_5b
iget-object v5, v0, Lcom/ubermedia/ui/StringSpanInfo;->a:Ljava/lang/CharSequence;
invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I
move-result v5
const-string v6, "\u2026"
iget-object v7, v0, Lcom/ubermedia/ui/StringSpanInfo;->a:Ljava/lang/CharSequence;
invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I
move-result v7
invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I
move-result v6
add-int/lit8 v6, v6, 0x1
invoke-virtual {v0}, Lcom/ubermedia/ui/StringSpanInfo;->getURL()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v5, v6, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;
:cond_5b
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_14
:cond_5f
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_62
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_62} :catch_64
move-result-object v0
:goto_63
return-object v0
:catch_64
move-exception v0
invoke-virtual {p0}, Lcom/twidroid/model/twitter/CommunicationEntity;->n()Ljava/lang/String;
move-result-object v0
goto :goto_63
.end method
.method public q()[Lcom/ubermedia/model/twitter/UrlEntity;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->G:[Lcom/ubermedia/model/twitter/UrlEntity;
return-object v0
.end method
.method public r()[Lcom/ubermedia/model/twitter/MediaUrlEntity;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->H:[Lcom/ubermedia/model/twitter/MediaUrlEntity;
return-object v0
.end method
.method public s()[Lcom/ubermedia/model/twitter/HashtagEntity;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->I:[Lcom/ubermedia/model/twitter/HashtagEntity;
return-object v0
.end method
.method public t()[Lcom/ubermedia/model/twitter/MentionEntity;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->J:[Lcom/ubermedia/model/twitter/MentionEntity;
return-object v0
.end method
.method public u()Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lcom/twidroid/model/twitter/CommunicationEntity;->d()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/ubermedia/b/a/i;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 5
iget-wide v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->x:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget-wide v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->w:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->y:Lcom/twidroid/ui/StringUrlSpan;
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
return-void
.end method