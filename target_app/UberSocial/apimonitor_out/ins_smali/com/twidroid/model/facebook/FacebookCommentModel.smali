.class public Lcom/twidroid/model/facebook/FacebookCommentModel;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private a:Ljava/lang/String;
.field private b:Ljava/lang/String;
.field private c:Ljava/lang/String;
.field private d:Ljava/lang/String;
.field private e:J
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/twidroid/model/facebook/FacebookCommentModel$1;
invoke-direct {v0}, Lcom/twidroid/model/facebook/FacebookCommentModel$1;-><init>()V
sput-object v0, Lcom/twidroid/model/facebook/FacebookCommentModel;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-direct {p0, p1}, Lcom/twidroid/model/facebook/FacebookCommentModel;->a(Landroid/os/Parcel;)V
return-void
.end method
.method private a(Landroid/os/Parcel;)V
.registers 4
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/facebook/FacebookCommentModel;->a:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/facebook/FacebookCommentModel;->b:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/facebook/FacebookCommentModel;->c:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/facebook/FacebookCommentModel;->d:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/twidroid/model/facebook/FacebookCommentModel;->e:J
return-void
.end method
.method public a(J)Lcom/twidroid/model/facebook/FacebookCommentModel;
.registers 3
iput-wide p1, p0, Lcom/twidroid/model/facebook/FacebookCommentModel;->e:J
return-object p0
.end method
.method public a(Ljava/lang/String;)Lcom/twidroid/model/facebook/FacebookCommentModel;
.registers 2
iput-object p1, p0, Lcom/twidroid/model/facebook/FacebookCommentModel;->a:Ljava/lang/String;
return-object p0
.end method
.method public a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/facebook/FacebookCommentModel;->a:Ljava/lang/String;
return-object v0
.end method
.method public b(Ljava/lang/String;)Lcom/twidroid/model/facebook/FacebookCommentModel;
.registers 2
iput-object p1, p0, Lcom/twidroid/model/facebook/FacebookCommentModel;->b:Ljava/lang/String;
return-object p0
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/facebook/FacebookCommentModel;->b:Ljava/lang/String;
return-object v0
.end method
.method public c(Ljava/lang/String;)Lcom/twidroid/model/facebook/FacebookCommentModel;
.registers 2
iput-object p1, p0, Lcom/twidroid/model/facebook/FacebookCommentModel;->c:Ljava/lang/String;
return-object p0
.end method
.method public c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/facebook/FacebookCommentModel;->c:Ljava/lang/String;
return-object v0
.end method
.method public d(Ljava/lang/String;)Lcom/twidroid/model/facebook/FacebookCommentModel;
.registers 2
iput-object p1, p0, Lcom/twidroid/model/facebook/FacebookCommentModel;->d:Ljava/lang/String;
return-object p0
.end method
.method public d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/facebook/FacebookCommentModel;->d:Ljava/lang/String;
return-object v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public e(Ljava/lang/String;)Lcom/twidroid/model/facebook/FacebookCommentModel;
.registers 4
invoke-static {p1}, Lcom/twidroid/model/facebook/FacebookNewsModel;->p(Ljava/lang/String;)Ljava/util/Date;
move-result-object v0
invoke-virtual {v0}, Ljava/util/Date;->getTime()J
move-result-wide v0
iput-wide v0, p0, Lcom/twidroid/model/facebook/FacebookCommentModel;->e:J
return-object p0
.end method
.method public e()Ljava/util/Date;
.registers 4
new-instance v0, Ljava/util/Date;
iget-wide v1, p0, Lcom/twidroid/model/facebook/FacebookCommentModel;->e:J
invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 5
iget-object v0, p0, Lcom/twidroid/model/facebook/FacebookCommentModel;->a:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/model/facebook/FacebookCommentModel;->b:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/model/facebook/FacebookCommentModel;->c:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/model/facebook/FacebookCommentModel;->d:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-wide v0, p0, Lcom/twidroid/model/facebook/FacebookCommentModel;->e:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
return-void
.end method