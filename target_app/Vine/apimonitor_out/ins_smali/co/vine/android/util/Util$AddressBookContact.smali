.class  Lco/vine/android/util/Util$AddressBookContact;
.super Ljava/lang/Object;
.source "Util.java"
.field public emails:Ljava/util/HashSet;
.field public name:Ljava/lang/String;
.field public phones:Ljava/util/HashSet;
.field public starred:Z
.field public timesContacted:I
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lco/vine/android/util/Util$AddressBookContact;->name:Ljava/lang/String;
iput-boolean v0, p0, Lco/vine/android/util/Util$AddressBookContact;->starred:Z
iput v0, p0, Lco/vine/android/util/Util$AddressBookContact;->timesContacted:I
return-void
.end method
.method public addEmail(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
iget-object v1, p0, Lco/vine/android/util/Util$AddressBookContact;->emails:Ljava/util/HashSet;
if-nez v1, :cond_b
new-instance v1, Ljava/util/HashSet;
invoke-direct {v1}, Ljava/util/HashSet;-><init>()V
iput-object v1, p0, Lco/vine/android/util/Util$AddressBookContact;->emails:Ljava/util/HashSet;
:cond_b
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
new-instance v1, Lorg/apache/http/message/BasicNameValuePair;
const-string v2, "emailAddress"
invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_2a
new-instance v1, Lorg/apache/http/message/BasicNameValuePair;
const-string v2, "label"
invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
:cond_2a
iget-object v1, p0, Lco/vine/android/util/Util$AddressBookContact;->emails:Ljava/util/HashSet;
invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public addPhone(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
iget-object v1, p0, Lco/vine/android/util/Util$AddressBookContact;->phones:Ljava/util/HashSet;
if-nez v1, :cond_b
new-instance v1, Ljava/util/HashSet;
invoke-direct {v1}, Ljava/util/HashSet;-><init>()V
iput-object v1, p0, Lco/vine/android/util/Util$AddressBookContact;->phones:Ljava/util/HashSet;
:cond_b
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
new-instance v1, Lorg/apache/http/message/BasicNameValuePair;
const-string v2, "phoneNumber"
invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_2a
new-instance v1, Lorg/apache/http/message/BasicNameValuePair;
const-string v2, "label"
invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
:cond_2a
iget-object v1, p0, Lco/vine/android/util/Util$AddressBookContact;->phones:Ljava/util/HashSet;
invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public setStarred()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lco/vine/android/util/Util$AddressBookContact;->starred:Z
return-void
.end method
.method public setTimesContacted(I)V
.registers 2
iput p1, p0, Lco/vine/android/util/Util$AddressBookContact;->timesContacted:I
return-void
.end method