require 'diary_entry'

RSpec.describe DiaryEntry do
  it "returns title as a string" do
    entry = DiaryEntry.new("MyDiary", "MyDayToday")
    result = entry.title
    expect(result).to eq "MyDiary"
  end

  it "returns contents as a string" do
    entry = DiaryEntry.new("MyDiary", "MyDayToday")
    result = entry.contents
    expect(result).to eq "MyDayToday"
  end

  it "returns the number of words in the contents as an integer" do
    entry = DiaryEntry.new("MyDiary", "My Day Today")
    result = entry.count_words
    expect(result).to eq 3
  end

  it "returns an estimated reading time in minutes based on the wpm and contents." do
    entry = DiaryEntry.new("Hey", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vulputate congue rutrum. Fusce suscipit tortor ex, et sodales leo aliquam ut. Suspendisse fermentum est vel augue egestas, et fringilla mauris varius. Pellentesque in pharetra dui. Sed commodo nulla nec rhoncus elementum. Praesent vitae aliquet dolor, ac lobortis mauris. Maecenas sit amet dolor pharetra, suscipit magna quis, ornare elit. Aenean varius ullamcorper lorem eget varius. Etiam lacinia felis ligula, ut faucibus ligula vulputate id. Aenean non accumsan nulla. Quisque non facilisis sapien. Pellentesque dapibus, tortor sit amet commodo accumsan, sem tortor tincidunt metus, eu pulvinar eros quam a elit. Donec consectetur nisl ut enim tristique, vel congue orci vulputate. Aliquam sed ullamcorper ante, id lobortis turpis. Nunc urna lorem, convallis et varius eu, tempus non nisl.
    Donec a sem pharetra, ultricies ipsum id, hendrerit metus. Proin libero dui, scelerisque nec purus ac, malesuada fermentum elit. Nunc pellentesque blandit gravida. Nullam convallis, magna eu vulputate fermentum, nulla risus dignissim mi, eu pulvinar sem ex vel nulla. In est sapien, pellentesque sit amet faucibus eu, egestas in mauris. Sed vestibulum sapien arcu, id consequat tellus commodo fermentum. Donec eu tincidunt nunc, vitae rhoncus elit. Aenean varius enim arcu, a sollicitudin libero lacinia quis. Maecenas interdum sapien ante, mattis sollicitudin erat tristique a. Maecenas ut ante sit amet libero mattis gravida interdum sed nulla. Sed pretium vehicula neque quis molestie. Morbi tincidunt, ligula ut aliquam semper, nulla lectus consequat nibh, vitae convallis nisl nibh sit amet neque. Nam vehicula justo id eros iaculis interdum.
    Proin ligula tortor, semper non purus a, efficitur placerat mi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi tempor efficitur sem et convallis. Donec vitae tristique mauris. Vivamus ac ornare dui, non varius ex. Vestibulum vestibulum rhoncus nulla. Etiam rutrum placerat tellus, quis sollicitudin urna semper et. Curabitur euismod mauris a metus blandit, quis vestibulum nunc tempus. Fusce in consequat leo. Sed in tincidunt tortor. Maecenas faucibus mi id eros laoreet volutpat. Cras a nisl non magna elementum gravida a et dui. Ut in lacus congue, porta ligula nec, sagittis neque. Ut sed dolor eget nunc ultrices porttitor. Praesent eget mi lorem. Etiam at mattis justo.
    Suspendisse auctor aliquam turpis, id luctus enim rutrum id. Nullam vestibulum consectetur nisl, ut tincidunt justo facilisis eu. Vestibulum dignissim magna id neque aliquam, ut dapibus tellus ornare. Praesent id rhoncus ex. Proin sit amet pulvinar neque. Sed accumsan euismod sapien vel eleifend. Praesent sit amet congue tortor. Nulla eleifend condimentum pretium. Sed pretium mi ex, quis placerat risus fermentum quis. Ut maximus, diam fringilla aliquet malesuada, lacus neque condimentum lacus, vel condimentum elit lorem vitae massa. Praesent vel mauris quam. Donec in pretium nulla. Nullam porttitor magna neque, sit amet vulputate est fermentum a.
    Proin ut finibus eros. Aliquam erat volutpat. Pellentesque dolor orci, venenatis vitae auctor at, ullamcorper eu ligula. Nam arcu nulla, convallis in est tempus, aliquet molestie lectus. Nulla sit amet magna venenatis tortor ultricies auctor. Etiam in posuere leo. Sed viverra felis ligula, vehicula egestas ipsum viverra a. Quisque eu vestibulum nisi. Ut ullamcorper consequat accumsan. Etiam dictum consequat nisl, efficitur fermentum ipsum ullamcorper efficitur. Vivamus rutrum leo id erat eleifend lobortis. Suspendisse maximus leo non erat iaculis, nec elementum nunc ullamcorper.")
    result = entry.reading_time(200)
    expect(result).to eq 3
  end

  it "returns a chunk of text given wpm and time available." do
    entry = DiaryEntry.new("Hey", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vulputate congue rutrum. Fusce suscipit tortor ex, et sodales leo aliquam ut. Suspendisse fermentum est vel augue egestas, et fringilla mauris varius. Pellentesque in pharetra dui. Sed commodo nulla nec rhoncus elementum. Praesent vitae aliquet dolor, ac lobortis mauris. Maecenas sit amet dolor pharetra, suscipit magna quis, ornare elit. Aenean varius ullamcorper lorem eget varius. Etiam lacinia felis ligula, ut faucibus ligula vulputate id. Aenean non accumsan nulla. Quisque non facilisis sapien. Pellentesque dapibus, tortor sit amet commodo accumsan, sem tortor tincidunt metus, eu pulvinar eros quam a elit. Donec consectetur nisl ut enim tristique, vel congue orci vulputate. Aliquam sed ullamcorper ante, id lobortis turpis. Nunc urna lorem, convallis et varius eu, tempus non nisl. Donec a sem pharetra, ultricies ipsum id, hendrerit metus. Proin libero dui, scelerisque nec purus ac, malesuada fermentum elit. Nunc pellentesque blandit gravida. Nullam convallis, magna eu vulputate fermentum, nulla risus dignissim mi, eu pulvinar sem ex vel nulla. In est sapien, pellentesque sit amet faucibus eu, egestas in mauris. Sed vestibulum sapien arcu, id consequat tellus commodo fermentum. Donec eu tincidunt nunc, vitae rhoncus elit. Aenean varius enim arcu, a sollicitudin libero lacinia quis. Maecenas interdum sapien ante, mattis sollicitudin erat tristique a. Maecenas ut ante sit amet libero mattis gravida interdum sed nulla. Sed pretium vehicula neque quis molestie. Morbi tincidunt, ligula ut aliquam semper, nulla lectus consequat nibh, vitae convallis nisl nibh sit amet neque. Nam vehicula justo id eros iaculis interdum. Proin ligula tortor, semper non purus a, efficitur placerat mi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi tempor efficitur sem et convallis. Donec vitae tristique mauris. Vivamus ac ornare dui, non varius ex. Vestibulum vestibulum rhoncus nulla. Etiam rutrum placerat tellus, quis sollicitudin urna semper et. Curabitur euismod mauris a metus blandit, quis vestibulum nunc tempus. Fusce in consequat leo. Sed in tincidunt tortor. Maecenas faucibus mi id eros laoreet volutpat. Cras a nisl non magna elementum gravida a et dui. Ut in lacus congue, porta ligula nec, sagittis neque. Ut sed dolor eget nunc ultrices porttitor. Praesent eget mi lorem. Etiam at mattis justo. Suspendisse auctor aliquam turpis, id luctus enim rutrum id. Nullam vestibulum consectetur nisl, ut tincidunt justo facilisis eu. Vestibulum dignissim magna id neque aliquam, ut dapibus tellus ornare. Praesent id rhoncus ex. Proin sit amet pulvinar neque. Sed accumsan euismod sapien vel eleifend. Praesent sit amet congue tortor. Nulla eleifend condimentum pretium. Sed pretium mi ex, quis placerat risus fermentum quis. Ut maximus, diam fringilla aliquet malesuada, lacus neque condimentum lacus, vel condimentum elit lorem vitae massa. Praesent vel mauris quam. Donec in pretium nulla. Nullam porttitor magna neque, sit amet vulputate est fermentum a. Proin ut finibus eros. Aliquam erat volutpat. Pellentesque dolor orci, venenatis vitae auctor at, ullamcorper eu ligula. Nam arcu nulla, convallis in est tempus, aliquet molestie lectus. Nulla sit amet magna venenatis tortor ultricies auctor. Etiam in posuere leo. Sed viverra felis ligula, vehicula egestas ipsum viverra a. Quisque eu vestibulum nisi. Ut ullamcorper consequat accumsan. Etiam dictum consequat nisl, efficitur fermentum ipsum ullamcorper efficitur. Vivamus rutrum leo id erat eleifend lobortis. Suspendisse maximus leo non erat iaculis, nec elementum nunc ullamcorper.")
    result = entry.reading_chunk(200, 1)
    expect(result).to eq "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vulputate congue rutrum. Fusce suscipit tortor ex, et sodales leo aliquam ut. Suspendisse fermentum est vel augue egestas, et fringilla mauris varius. Pellentesque in pharetra dui. Sed commodo nulla nec rhoncus elementum. Praesent vitae aliquet dolor, ac lobortis mauris. Maecenas sit amet dolor pharetra, suscipit magna quis, ornare elit. Aenean varius ullamcorper lorem eget varius. Etiam lacinia felis ligula, ut faucibus ligula vulputate id. Aenean non accumsan nulla. Quisque non facilisis sapien. Pellentesque dapibus, tortor sit amet commodo accumsan, sem tortor tincidunt metus, eu pulvinar eros quam a elit. Donec consectetur nisl ut enim tristique, vel congue orci vulputate. Aliquam sed ullamcorper ante, id lobortis turpis. Nunc urna lorem, convallis et varius eu, tempus non nisl. Donec a sem pharetra, ultricies ipsum id, hendrerit metus. Proin libero dui, scelerisque nec purus ac, malesuada fermentum elit. Nunc pellentesque blandit gravida. Nullam convallis, magna eu vulputate fermentum, nulla risus dignissim mi, eu pulvinar sem ex vel nulla. In est sapien, pellentesque sit amet faucibus eu, egestas in mauris. Sed vestibulum sapien arcu, id consequat tellus commodo fermentum. Donec eu tincidunt nunc, vitae rhoncus elit. Aenean varius enim arcu, a sollicitudin libero lacinia quis."
  end

  it "returns the next chunk of text" do
    entry = DiaryEntry.new("Hey", "I have a big teddy bear which I won at a fair.")
    entry.reading_chunk(5,1)
    result = entry.reading_chunk(5, 1)
    expect(result).to eq "bear which I won at"
  end

  it "restarts when gets to end" do
    entry = DiaryEntry.new("Hey", "I have a big teddy bear which I won at a fair.")
    entry.reading_chunk(5,1)
    entry.reading_chunk(5,1)
    entry.reading_chunk(5,1)
    result = entry.reading_chunk(5, 1)
    expect(result).to eq "I have a big teddy"
  end
end