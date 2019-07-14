### 객체지향 패러다임에서 클래스가 필요한지 고민을 하는데 이 전에 객체라는 것에 중점을 두고 객체를 먼저 생각하자.
* 어떤 클래스가 필요한지를 고민하기 전에 어떤 객체들이 필요한지 고민하라
* 객체는 독립적인 존재가 아니라 기능을 구현하기 위해 협력하는 공동체의 일원으로 봐야한다. 즉 객체는 홀로 존재하는 것이 아니라 다른 객체에게 도움을 주거나 의존하면서 살아가는 협력적인 존재다.

### 캡슐화
* 데이터와 기능을 객체 내부로 함께 묶는것
* 객체의 내부와 외부를 구분하면 클라이언트 프로그램 개발자는 알아야할 지식의 양이 줄어듬

### 다형성
* 객체지향 프로그램의 컴파일 시간 의존성과 실행 시간 의존성이 다를 수 있다는 사실을 기반으로함
* 동일한 메시지를 수신했을 때 객체의 타입에 따라 다르게 응답할 수 있는 능력
* 다형적인 협력에 참여하는 객체들은 모두 같은 메시지를 이해할 수 있어야 한다. 다시 말해 인터페이스가 동일해야 한다는 것
* 지연 바인딩(혹은 동적 바인딩) : 메시지와 메서드를 실행 시점에 바인딩 함
* 초기 바인딩(정적 바인딩) : 전통적인 함수 호출처럼 컴파일 시점에 실행될 함수나 프로시저를 결정하는 것
* 객체지향은 지연바인딩 매커니즘을 이용함.(컴파일 시점 의존성과 실행 시점 의존성이 다름)

### 추상화와 유연성
* 추상화를 사용하면 두가지 장점이 있다.
  * 추상화의 계층만 따로 떼어 놓고 살펴보면 요구사항의 정책을 높은 수준에서 서술할 수 있다는 것
  * 추상화를 이용하면 설계가 좀 더 유연해진다는 것  

### 상속과 합성
* 상속은 클래스를 통해 강하게 결합되는데, 합성은 메시지를 통해 느슨하게 결합된다. 따라서 코드의 재사용을 위해서는 상속보다는 합성을 선호하는 것이 더 좋은 방법이다.
* 그렇다고 상속을 절대 사용하지 말라는 것은 아니다. 코드를 재사용 하는 경우에는 상속보다 합성을 선호하는 것이 옳지만, 다형성을 위해 인터페이스를 재사용하는 경우에는 상속과 합성을 함께 조합해서 사용할 수 밖에 없다.

### 상속의 단점
* 상속은 캡슐화를 무너트림.(자식클래스가 부모클래스를 잘 알고있어야 함)
* 설계가 유연하지 않음. 상속은 부모 클래스와 자식 클래스 사이의 관계를 컴파일 시점에 결정하기 때문에 실행 시점에 객체의 종류를 변경하는것이 불가능함

### 합성
* 부모 클래스 코드와 자식 클래스 코드를 컴파일 시간에 인터페이스에 의해 약하게 결합됨. 즉 실행 시간에 객체의 종류를 변경하는것이 가능함.
* 캡슐화가 가능함.