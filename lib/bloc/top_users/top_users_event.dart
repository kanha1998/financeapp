

abstract class TopUserEvent
{
  const TopUserEvent();
}

class TopUserFetch extends TopUserEvent
{

  int TopUserCount;

  TopUserFetch({required this.TopUserCount});

}