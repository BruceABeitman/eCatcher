.class public Lcom/twidroid/model/facebook/FacebookNewsModel;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
.field public static final a:Ljava/lang/String; = "http://graph.facebook.com/"
.field public static final b:Ljava/lang/String; = "/picture?type=square"
.field private static final c:Ljava/lang/String; = "com.uberbocial.FBNews"
.field private d:Ljava/lang/String;
.field private e:Ljava/lang/String;
.field private f:Ljava/lang/String;
.field private g:Ljava/lang/String;
.field private h:Ljava/lang/String;
.field private i:Ljava/lang/String;
.field private j:Ljava/lang/String;
.field private k:Ljava/lang/String;
.field private l:Ljava/lang/String;
.field private m:Ljava/lang/String;
.field private n:Ljava/lang/String;
.field private o:I
.field private p:I
.field private q:J
.field private r:Ljava/lang/String;
.field private s:Ljava/lang/String;
.field private t:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/twidroid/model/facebook/FacebookNewsModel$1;
invoke-direct {v0}, Lcom/twidroid/model/facebook/FacebookNewsModel$1;-><init>()V
sput-object v0, Lcom/twidroid/model/facebook/FacebookNewsModel;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 2
invoke-direct {p0}, Lcom/twidroid/model/facebook/FacebookNewsModel;-><init>()V
invoke-direct {p0, p1}, Lcom/twidroid/model/facebook/FacebookNewsModel;->a(Landroid/os/Parcel;)V
return-void
.end method
.method private a(Landroid/os/Parcel;)V
.registers 4
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->d:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->e:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->f:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->g:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->h:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->i:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->j:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->k:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->l:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->m:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->n:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->o:I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->p:I
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->q:J
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->r:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->s:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->t:Ljava/lang/String;
return-void
.end method
.method public static p(Ljava/lang/String;)Ljava/util/Date;
.registers 5
const/4 v0, 0x0
const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"
new-instance v2, Ljava/text/SimpleDateFormat;
sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-direct {v2, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
:try_start_a
invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
:try_end_d
.catch Ljava/text/ParseException; {:try_start_a .. :try_end_d} :catch_f
.catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_d} :catch_14
move-result-object v0
:goto_e
return-object v0
:catch_f
move-exception v1
invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V
goto :goto_e
:catch_14
move-exception v1
invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
goto :goto_e
.end method
.method public a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->d:Ljava/lang/String;
return-object v0
.end method
.method public a(I)V
.registers 2
iput p1, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->o:I
return-void
.end method
.method public a(J)V
.registers 3
iput-wide p1, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->q:J
return-void
.end method
.method public a(Lcom/twidroid/model/facebook/FacebookNewsModel;)V
.registers 4
iget v0, p1, Lcom/twidroid/model/facebook/FacebookNewsModel;->o:I
iput v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->o:I
iget-wide v0, p1, Lcom/twidroid/model/facebook/FacebookNewsModel;->q:J
iput-wide v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->q:J
iget-object v0, p1, Lcom/twidroid/model/facebook/FacebookNewsModel;->e:Ljava/lang/String;
iput-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->e:Ljava/lang/String;
iget-object v0, p1, Lcom/twidroid/model/facebook/FacebookNewsModel;->d:Ljava/lang/String;
iput-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->d:Ljava/lang/String;
iget v0, p1, Lcom/twidroid/model/facebook/FacebookNewsModel;->p:I
iput v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->p:I
iget-object v0, p1, Lcom/twidroid/model/facebook/FacebookNewsModel;->l:Ljava/lang/String;
iput-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->l:Ljava/lang/String;
iget-object v0, p1, Lcom/twidroid/model/facebook/FacebookNewsModel;->g:Ljava/lang/String;
iput-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->g:Ljava/lang/String;
iget-object v0, p1, Lcom/twidroid/model/facebook/FacebookNewsModel;->h:Ljava/lang/String;
iput-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->h:Ljava/lang/String;
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->d:Ljava/lang/String;
return-void
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->e:Ljava/lang/String;
return-object v0
.end method
.method public b(I)V
.registers 2
iput p1, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->p:I
return-void
.end method
.method public b(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->e:Ljava/lang/String;
return-void
.end method
.method public c(I)Landroid/text/SpannableStringBuilder;
.registers 8
const/16 v5, 0x21
const/4 v4, 0x0
new-instance v0, Landroid/text/SpannableStringBuilder;
invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V
iget-object v1, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->m:Ljava/lang/String;
if-eqz v1, :cond_42
new-instance v1, Landroid/text/SpannableString;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->m:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\n"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
new-instance v2, Landroid/text/style/ForegroundColorSpan;
invoke-direct {v2, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V
invoke-virtual {v1}, Landroid/text/SpannableString;->length()I
move-result v3
invoke-virtual {v1, v2, v4, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
new-instance v2, Landroid/text/style/StyleSpan;
const/4 v3, 0x1
invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V
invoke-virtual {v1}, Landroid/text/SpannableString;->length()I
move-result v3
invoke-virtual {v1, v2, v4, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
:cond_42
iget-object v1, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->n:Ljava/lang/String;
if-eqz v1, :cond_60
new-instance v1, Landroid/text/SpannableString;
iget-object v2, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->n:Ljava/lang/String;
invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
:goto_50
:cond_50
new-instance v1, Landroid/text/style/RelativeSizeSpan;
const v2, 0x3f4ccccd
invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V
invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I
move-result v2
invoke-virtual {v0, v1, v4, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
return-object v0
:cond_60
iget-object v1, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->s:Ljava/lang/String;
if-eqz v1, :cond_50
new-instance v1, Landroid/text/SpannableString;
iget-object v2, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->s:Ljava/lang/String;
invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
goto :goto_50
.end method
.method public c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->f:Ljava/lang/String;
return-object v0
.end method
.method public c(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->f:Ljava/lang/String;
return-void
.end method
.method public d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->g:Ljava/lang/String;
return-object v0
.end method
.method public d(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->g:Ljava/lang/String;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public e()I
.registers 2
iget v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->o:I
return v0
.end method
.method public e(Ljava/lang/String;)V
.registers 4
invoke-static {p1}, Lcom/twidroid/model/facebook/FacebookNewsModel;->p(Ljava/lang/String;)Ljava/util/Date;
move-result-object v0
invoke-virtual {v0}, Ljava/util/Date;->getTime()J
move-result-wide v0
iput-wide v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->q:J
return-void
.end method
.method public f()I
.registers 2
iget v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->p:I
return v0
.end method
.method public f(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->l:Ljava/lang/String;
return-void
.end method
.method public g()J
.registers 3
iget-wide v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->q:J
return-wide v0
.end method
.method public g(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->h:Ljava/lang/String;
return-void
.end method
.method public h()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->l:Ljava/lang/String;
return-object v0
.end method
.method public h(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->i:Ljava/lang/String;
return-void
.end method
.method public i()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->h:Ljava/lang/String;
return-object v0
.end method
.method public i(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->j:Ljava/lang/String;
return-void
.end method
.method public j()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->i:Ljava/lang/String;
return-object v0
.end method
.method public j(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->k:Ljava/lang/String;
return-void
.end method
.method public k()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->j:Ljava/lang/String;
return-object v0
.end method
.method public k(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->m:Ljava/lang/String;
return-void
.end method
.method public l()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->k:Ljava/lang/String;
return-object v0
.end method
.method public l(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->r:Ljava/lang/String;
return-void
.end method
.method public m()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->m:Ljava/lang/String;
return-object v0
.end method
.method public m(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->s:Ljava/lang/String;
return-void
.end method
.method public n()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->n:Ljava/lang/String;
return-object v0
.end method
.method public n(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->t:Ljava/lang/String;
return-void
.end method
.method public o()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->r:Ljava/lang/String;
return-object v0
.end method
.method public o(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->n:Ljava/lang/String;
return-void
.end method
.method public p()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->s:Ljava/lang/String;
return-object v0
.end method
.method public q()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->t:Ljava/lang/String;
return-object v0
.end method
.method public r()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->f:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "_"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->e:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 5
iget-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->d:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->e:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->f:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->g:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->h:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->i:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->j:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->k:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->l:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->m:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->n:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->o:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->p:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-wide v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->q:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->r:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->s:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/model/facebook/FacebookNewsModel;->t:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
return-void
.end method