.class public Lcom/instagram/model/people/PeopleTag;
.super Ljava/lang/Object;
.source "PeopleTag.java"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  a:Lcom/instagram/user/c/a;
.field  b:Landroid/graphics/PointF;
.field private c:Ljava/lang/String;
.field private d:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/instagram/model/people/a;
invoke-direct {v0}, Lcom/instagram/model/people/a;-><init>()V
sput-object v0, Lcom/instagram/model/people/PeopleTag;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private constructor <init>(Landroid/os/Parcel;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/model/people/PeopleTag;->d:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/model/people/PeopleTag;->c:Ljava/lang/String;
new-instance v0, Landroid/graphics/PointF;
invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V
iput-object v0, p0, Lcom/instagram/model/people/PeopleTag;->b:Landroid/graphics/PointF;
iget-object v0, p0, Lcom/instagram/model/people/PeopleTag;->b:Landroid/graphics/PointF;
invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F
move-result v1
iput v1, v0, Landroid/graphics/PointF;->x:F
iget-object v0, p0, Lcom/instagram/model/people/PeopleTag;->b:Landroid/graphics/PointF;
invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F
move-result v1
iput v1, v0, Landroid/graphics/PointF;->y:F
return-void
.end method
.method synthetic constructor <init>(Landroid/os/Parcel;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/model/people/PeopleTag;-><init>(Landroid/os/Parcel;)V
return-void
.end method
.method public constructor <init>(Lcom/instagram/user/c/a;Landroid/graphics/PointF;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/instagram/model/people/PeopleTag;->b:Landroid/graphics/PointF;
invoke-direct {p0, p1}, Lcom/instagram/model/people/PeopleTag;->a(Lcom/instagram/user/c/a;)V
return-void
.end method
.method static a(Lcom/fasterxml/jackson/a/l;)Landroid/graphics/PointF;
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getFloatValue()F
move-result v0
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getFloatValue()F
move-result v1
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
new-instance v2, Landroid/graphics/PointF;
invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V
return-object v2
.end method
.method private a(Lcom/instagram/user/c/a;)V
.registers 3
invoke-virtual {p1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/model/people/PeopleTag;->c:Ljava/lang/String;
invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/model/people/PeopleTag;->d:Ljava/lang/String;
return-void
.end method
.method final a()Lcom/instagram/model/people/PeopleTag;
.registers 2
iget-object v0, p0, Lcom/instagram/model/people/PeopleTag;->a:Lcom/instagram/user/c/a;
invoke-virtual {v0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/model/people/PeopleTag;->c:Ljava/lang/String;
iget-object v0, p0, Lcom/instagram/model/people/PeopleTag;->a:Lcom/instagram/user/c/a;
invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/model/people/PeopleTag;->d:Ljava/lang/String;
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/model/people/PeopleTag;->a:Lcom/instagram/user/c/a;
return-object p0
.end method
.method public final a(Landroid/graphics/PointF;)V
.registers 2
iput-object p1, p0, Lcom/instagram/model/people/PeopleTag;->b:Landroid/graphics/PointF;
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/model/people/PeopleTag;->c:Ljava/lang/String;
return-void
.end method
.method public final b()Landroid/graphics/PointF;
.registers 2
iget-object v0, p0, Lcom/instagram/model/people/PeopleTag;->b:Landroid/graphics/PointF;
return-object v0
.end method
.method public final b(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/instagram/model/people/PeopleTag;->d:Ljava/lang/String;
return-void
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/model/people/PeopleTag;->c:Ljava/lang/String;
return-object v0
.end method
.method public final d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/model/people/PeopleTag;->d:Ljava/lang/String;
return-object v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 4
if-ne p1, p0, :cond_4
const/4 v0, 0x1
:goto_3
return v0
:cond_4
instance-of v0, p1, Lcom/instagram/model/people/PeopleTag;
if-nez v0, :cond_a
const/4 v0, 0x0
goto :goto_3
:cond_a
check-cast p1, Lcom/instagram/model/people/PeopleTag;
invoke-virtual {p1}, Lcom/instagram/model/people/PeopleTag;->d()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/instagram/model/people/PeopleTag;->d:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_3
.end method
.method public hashCode()I
.registers 2
invoke-virtual {p0}, Lcom/instagram/model/people/PeopleTag;->d()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
iget-object v0, p0, Lcom/instagram/model/people/PeopleTag;->d:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/model/people/PeopleTag;->c:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/model/people/PeopleTag;->b:Landroid/graphics/PointF;
iget v0, v0, Landroid/graphics/PointF;->x:F
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V
iget-object v0, p0, Lcom/instagram/model/people/PeopleTag;->b:Landroid/graphics/PointF;
iget v0, v0, Landroid/graphics/PointF;->y:F
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V
return-void
.end method