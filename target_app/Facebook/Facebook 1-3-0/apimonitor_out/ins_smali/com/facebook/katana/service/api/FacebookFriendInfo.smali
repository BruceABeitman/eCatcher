.class public Lcom/facebook/katana/service/api/FacebookFriendInfo;
.super Lcom/facebook/katana/service/api/FacebookUser;
.source "FacebookFriendInfo.java"
.field static final synthetic $assertionsDisabled:Z
.field private static fields:Ljava/util/List;
.field private mBirthdayDay:I
.field private mBirthdayMonth:I
.field private mBirthdayYear:I
.field private mCellPhone:Ljava/lang/String;
.field private mContactEmail:Ljava/lang/String;
.field private mOtherPhone:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/facebook/katana/service/api/FacebookFriendInfo;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_f
const/4 v0, 0x1
:goto_9
sput-boolean v0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->$assertionsDisabled:Z
const/4 v0, 0x0
sput-object v0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->fields:Ljava/util/List;
return-void
:cond_f
const/4 v0, 0x0
goto :goto_9
.end method
.method public constructor <init>()V
.registers 2
const/4 v0, -0x1
invoke-direct {p0}, Lcom/facebook/katana/service/api/FacebookUser;-><init>()V
iput v0, p0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->mBirthdayMonth:I
iput v0, p0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->mBirthdayDay:I
iput v0, p0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->mBirthdayYear:I
return-void
.end method
.method public static getQueryFields()Ljava/util/List;
.registers 2
sget-object v0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->fields:Ljava/util/List;
if-nez v0, :cond_30
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
sput-object v0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->fields:Ljava/util/List;
sget-object v0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->fields:Ljava/util/List;
invoke-static {}, Lcom/facebook/katana/service/api/FacebookUser;->getQueryFields()Ljava/util/List;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
sget-object v0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->fields:Ljava/util/List;
const-string v1, "contact_email"
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->fields:Ljava/util/List;
const-string v1, "cell"
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->fields:Ljava/util/List;
const-string v1, "other_phone"
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->fields:Ljava/util/List;
const-string v1, "birthday_date"
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_30
sget-object v0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->fields:Ljava/util/List;
invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public computeHash()Ljava/lang/String;
.registers 10
const/4 v8, -0x1
const-wide/16 v6, 0x1f
iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->mUserId:J
iget-object v2, p0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->mFirstName:Ljava/lang/String;
if-eqz v2, :cond_14
mul-long v2, v6, v0
iget-object v4, p0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->mFirstName:Ljava/lang/String;
invoke-virtual {v4}, Ljava/lang/String;->hashCode()I
move-result v4
int-to-long v4, v4
add-long v0, v2, v4
:cond_14
iget-object v2, p0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->mLastName:Ljava/lang/String;
if-eqz v2, :cond_23
mul-long v2, v6, v0
iget-object v4, p0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->mLastName:Ljava/lang/String;
invoke-virtual {v4}, Ljava/lang/String;->hashCode()I
move-result v4
int-to-long v4, v4
add-long v0, v2, v4
:cond_23
iget-object v2, p0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->mImageUrl:Ljava/lang/String;
if-eqz v2, :cond_32
mul-long v2, v6, v0
iget-object v4, p0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->mImageUrl:Ljava/lang/String;
invoke-virtual {v4}, Ljava/lang/String;->hashCode()I
move-result v4
int-to-long v4, v4
add-long v0, v2, v4
:cond_32
iget-object v2, p0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->mCellPhone:Ljava/lang/String;
if-eqz v2, :cond_41
mul-long v2, v6, v0
iget-object v4, p0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->mCellPhone:Ljava/lang/String;
invoke-virtual {v4}, Ljava/lang/String;->hashCode()I
move-result v4
int-to-long v4, v4
add-long v0, v2, v4
:cond_41
iget-object v2, p0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->mOtherPhone:Ljava/lang/String;
if-eqz v2, :cond_50
mul-long v2, v6, v0
iget-object v4, p0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->mOtherPhone:Ljava/lang/String;
invoke-virtual {v4}, Ljava/lang/String;->hashCode()I
move-result v4
int-to-long v4, v4
add-long v0, v2, v4
:cond_50
iget-object v2, p0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->mContactEmail:Ljava/lang/String;
if-eqz v2, :cond_5f
mul-long v2, v6, v0
iget-object v4, p0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->mContactEmail:Ljava/lang/String;
invoke-virtual {v4}, Ljava/lang/String;->hashCode()I
move-result v4
int-to-long v4, v4
add-long v0, v2, v4
:cond_5f
iget v2, p0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->mBirthdayMonth:I
if-eq v2, v8, :cond_6a
mul-long v2, v6, v0
iget v4, p0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->mBirthdayMonth:I
int-to-long v4, v4
add-long v0, v2, v4
:cond_6a
iget v2, p0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->mBirthdayDay:I
if-eq v2, v8, :cond_75
mul-long v2, v6, v0
iget v4, p0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->mBirthdayDay:I
int-to-long v4, v4
add-long v0, v2, v4
:cond_75
iget v2, p0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->mBirthdayYear:I
if-eq v2, v8, :cond_80
mul-long v2, v6, v0
iget v4, p0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->mBirthdayYear:I
int-to-long v4, v4
add-long v0, v2, v4
:cond_80
invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v2
return-object v2
.end method
.method public getBirthdayDay()I
.registers 2
iget v0, p0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->mBirthdayDay:I
return v0
.end method
.method public getBirthdayMonth()I
.registers 2
iget v0, p0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->mBirthdayMonth:I
return v0
.end method
.method public getBirthdayYear()I
.registers 2
iget v0, p0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->mBirthdayYear:I
return v0
.end method
.method public getCellPhone()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->mCellPhone:Ljava/lang/String;
return-object v0
.end method
.method public getContactEmail()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->mContactEmail:Ljava/lang/String;
return-object v0
.end method
.method public getOtherPhone()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->mOtherPhone:Ljava/lang/String;
return-object v0
.end method
.method public hasPhoneNumber()Z
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->mCellPhone:Ljava/lang/String;
if-nez v0, :cond_a
iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->mOtherPhone:Ljava/lang/String;
if-nez v0, :cond_a
const/4 v0, 0x0
:goto_9
return v0
:cond_a
const/4 v0, 0x1
goto :goto_9
.end method
.method protected parseStringField(Ljava/lang/String;Ljava/lang/String;)Z
.registers 8
const/4 v4, 0x1
const/4 v3, 0x4
const-string v2, "contact_email"
invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_14
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_12
iput-object p2, p0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->mContactEmail:Ljava/lang/String;
:cond_12
:goto_12
move v2, v4
:goto_13
return v2
:cond_14
const-string v2, "cell"
invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_25
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_12
iput-object p2, p0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->mCellPhone:Ljava/lang/String;
goto :goto_12
:cond_25
const-string v2, "other_phone"
invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_36
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_12
iput-object p2, p0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->mOtherPhone:Ljava/lang/String;
goto :goto_12
:cond_36
const-string v2, "birthday_date"
invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_8a
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_12
const-string v2, "(\\d{2})/(\\d{2})(/(\\d{4}))?"
invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v0
invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z
move-result v2
if-eqz v2, :cond_12
sget-boolean v2, Lcom/facebook/katana/service/api/FacebookFriendInfo;->$assertionsDisabled:Z
if-nez v2, :cond_64
invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I
move-result v2
if-eq v2, v3, :cond_64
new-instance v2, Ljava/lang/AssertionError;
invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V
throw v2
:cond_64
invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v2
iput v2, p0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->mBirthdayMonth:I
const/4 v2, 0x2
invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v2
iput v2, p0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->mBirthdayDay:I
invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_12
invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v2
iput v2, p0, Lcom/facebook/katana/service/api/FacebookFriendInfo;->mBirthdayYear:I
goto :goto_12
:cond_8a
invoke-super {p0, p1, p2}, Lcom/facebook/katana/service/api/FacebookUser;->parseStringField(Ljava/lang/String;Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_12
const/4 v2, 0x0
goto :goto_13
.end method